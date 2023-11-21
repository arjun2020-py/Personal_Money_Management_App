import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';

class CustomDropdwonWidget extends StatelessWidget {
  const CustomDropdwonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text('Select Category'),
      items: CategoryDB().expanseCategoryValueNotifer.value.map((e) {
        return DropdownMenuItem(value: e.id, child: Text(e.categeryName));
      }).toList(),
      onChanged: (selectedValue) {
        print(selectedValue);
      },
    );
  }
}
