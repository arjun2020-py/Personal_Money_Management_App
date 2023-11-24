import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

import '../../../function/transaction/transcation_fun.dart';

class CustomDropdwonWidget extends StatefulWidget {
  const CustomDropdwonWidget({super.key});

  @override
  State<CustomDropdwonWidget> createState() => _CustomDropdwonWidgetState();
}

class _CustomDropdwonWidgetState extends State<CustomDropdwonWidget> {
  @override
  void initState() {
    CategoryDB().refreshUI();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectCategoryTypeNotfier,
      builder: (context, value, child) {
        return DropdownButton<String>(
          hint: Text('Select Category'),
          value: categoryID,
          items: (selectCategoryTypeNotfier.value == CategoryType.income
                  ? CategoryDB().incomeCategoryValueNotifer
                  : CategoryDB().expanseCategoryValueNotifer)
              .value 
              .map((e) {
            return DropdownMenuItem(
                onTap: () {
                  //hive DB  push value vran vaddii.
                  selectedCategoryModel = e;
                  print('selectedCategoryModel${selectedCategoryModel}');
                },
                value: e.id,
                child: Text(e.categeryName));
          }).toList(),
          onChanged: (selectedValue) {
            // print(selectedValue);
            setState(() {
              //select chythuee dropdown value show use chynuoo. 
              categoryID = selectedValue;
              print('category___id:${categoryID}');
            });
          },
        );
      },
    );
  }
}
