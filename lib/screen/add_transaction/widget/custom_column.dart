import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

import 'custom_date_picker.dart';
import 'custom_dropdown_widget.dart';
import 'custom_elev_button.dart';
import 'custom_radio_button.dart';
import 'custom_textform_widget.dart';

class CustomColoumWidget extends StatelessWidget {
  const CustomColoumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customTextformWidget(
          hinttext: 'purpose',
          textInputType: TextInputType.name,
        ),
        SizedBox(
          height: 10,
        ),
        customTextformWidget(
          hinttext: 'amount',
          textInputType: TextInputType.number,
        ),
        CustomDatePicker(),
        Row(
          children: [
            CustomRadioButton(
              text: 'Income',
              type: CategoryType.income,
            ),
            CustomRadioButton(text: 'Expense', type: CategoryType.expense),
          ],
        ),
        CustomDropdwonWidget(),
        CustomElevButton()
      ],
    );
  }
}
