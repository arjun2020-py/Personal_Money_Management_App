
import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';
import 'package:peronal_money_mangment/screen/catagery/widget/custom_radio_button.dart';

Future<void> showCategoryAddPopup(BuildContext context) async {
  final _nameController = TextEditingController();
  return showDialog(
    context: context,
    builder: (cotx) {
      return SimpleDialog(
        title: Text('Add Category'),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _nameController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: 'Category Name', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CustomRaioButton(text: 'income', type: CategoryType.income),
                CustomRaioButton(text: 'expense', type: CategoryType.expense),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                onPressed: () {
                  final _name = _nameController.text;

                  //validation check
                  if (_name.isEmpty) {
                    return;
                  }
                  final _type = selectedCategoryNotifer.value;
                  final _category = CategeryModel(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      categeryName: _name,
                      type: _type);
                  CategoryDB().instertCategory(_category);
                  Navigator.of(cotx).pop();
                },
                child: Text('Add ')),
          )
        ],
      );
    },
  );
}
