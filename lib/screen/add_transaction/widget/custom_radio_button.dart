import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

import '../../../function/transaction/transcation_fun.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({super.key, required this.text, required this.type});
  final String text;
  final CategoryType type;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: selectCategoryTypeNotfier,
        builder: (context, value, child) {
          return RadioListTile(
            value: type,
            groupValue: selectCategoryTypeNotfier.value,
            title: Text(text),
            onChanged: (value) {
              if (value == null) {
                return;
              }
              selectCategoryTypeNotfier.value = value;
            
              selectCategoryTypeNotfier.notifyListeners();
            },
          );
        },
      ),
    );
  }
}
