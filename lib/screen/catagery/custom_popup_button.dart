
import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';
import 'package:peronal_money_mangment/screen/catagery/widget/custom_radio_button.dart';

Future<void> showCategoryAddPopup(BuildContext context) async {
  final nameController = TextEditingController();
  return showDialog(
    context: context,
    builder: (cotx) {
      return SimpleDialog(
        title: Text('Add Category'),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: nameController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: 'Category Name', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                CustomRaioButton(text: 'income', type: CategoryType.income),
                CustomRaioButton(text: 'expense', type: CategoryType.expense),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                onPressed: () {
                  final name = nameController.text;

                  //validation check
                  if (name.isEmpty) {
                    return;
                  }
                  final type = selectedCategoryNotifer.value;
                  final category = CategeryModel(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      categeryName: name,
                      type: type);
                  CategoryDB.instance.instertCategory(category);
                  Navigator.of(cotx).pop();
                },
                child: Text('Add ')),
          )
        ],
      );
    },
  );
}
