import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/categery/categery_model.dart';

final TextEditingController purposeController = TextEditingController(),
    amountController = TextEditingController();
final formKey = GlobalKey<FormState>();
DateTime? selectDate;
ValueNotifier<CategoryType> selectCategoryTypeNotfier =
    ValueNotifier(CategoryType.income);
CategeryModel? selectedCategoryModel;
final RxList<CategeryModel> categoryList = <CategeryModel>[].obs;

ValueNotifier<String> categoryID = ValueNotifier('');

onSelectId(String  selectedValue) {
  categoryID.value = selectedValue;
}

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
