import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

ValueNotifier<CategoryType> selectedCategoryNotifer =
    ValueNotifier(CategoryType.income);

class CustomRaioButton extends StatelessWidget {
  const CustomRaioButton({super.key, required this.text, required this.type});
  final String text;
  final CategoryType type;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: selectedCategoryNotifer,
          builder: (context, value, child) {
            return Radio<CategoryType>(
              value: type,
              groupValue: selectedCategoryNotifer.value,
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                selectedCategoryNotifer.value = value;
                selectedCategoryNotifer.notifyListeners();
              },
            );
          },
        ),
        Text(text)
      ],
    );
  }
}
