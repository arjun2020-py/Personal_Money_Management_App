import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({super.key, required this.text, required this.type});
  final String text;
  final CategoryType type;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        value: type,
        groupValue: type,
        title: Text(text),
        onChanged: (value) {},
      ),
    );
  }
}
