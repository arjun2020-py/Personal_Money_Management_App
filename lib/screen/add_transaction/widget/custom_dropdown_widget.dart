import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

import '../../../function/transaction/transcation_fun.dart';

class CustomDropdwonWidget extends StatelessWidget {
  const CustomDropdwonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectCategoryTypeNotfier,
      builder: (context, value, child) {
        return DropdownButton(
          hint: Text('Select Category'),
          value: categoryID.value,
          items: (selectCategoryTypeNotfier.value == CategoryType.income
                  ? CategoryDB().incomeCategoryValueNotifer
                  : CategoryDB().expanseCategoryValueNotifer)
              .value
              .map((e) {
            return DropdownMenuItem(value: e.id, child: Text(e.categeryName));
          }).toList(),
          onChanged: (selectedValue) {
            // print(selectedValue);
            onSelectId(selectedValue!);
            print('category___id:${categoryID.value}');
          },
        );
      },
    );
  }
}
