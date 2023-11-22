import 'package:flutter/material.dart';

import '../../model/categery/categery_model.dart';

final TextEditingController purposeController = TextEditingController(),
    amountController = TextEditingController();
final formKey = GlobalKey<FormState>();
 DateTime? selectDate;
CategoryType? selectCategoryType;
CategeryModel? selectedCategoryModel;

// onSelectDate(DateTime selectedDate) {
  
//   selectDate = selectedDate;
//   print('choice date${selectDate.value}');
// }

onSubmitTranscation(BuildContext context) {
  if (formKey.currentState!.validate()) {
    purposeController.clear();
    amountController.clear();
    Navigator.of(context).pop();
  }
}

onPurposeValidation(String value) {
  if (value.isEmpty) {
    return 'enter valid purpose';
  }
}

onAmountValidation(String value) {
  if (value.isEmpty) {
    return 'enter vaild amount';
  }
}
