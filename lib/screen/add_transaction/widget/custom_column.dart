import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

import '../../../function/transaction/transcation_fun.dart';
import '../add_transation_controller.dart';
import 'custom_date_picker.dart';
import 'custom_dropdown_widget.dart';
import 'custom_elev_button.dart';
import 'custom_radio_button.dart';
import 'custom_textform_widget.dart';

class CustomColoumWidget extends StatelessWidget {
  const CustomColoumWidget({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Form(
          key: formKey,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customTextformWidget(
            validator: (value) => onPurposeValidation(value!),
          
            controller: purposeController,
            hinttext: 'purpose',
            textInputType: TextInputType.name,
          ),
          SizedBox(
            height: 10,
          ),
          customTextformWidget(
            validator: (value) =>onAmountValidation(value!) ,

            controller: amountController,
            hinttext: 'amount',
            textInputType: TextInputType.number,
          ),
          CustomDatePicker(),
          Row(
            children: const [
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
      ),
    );
  }
}
