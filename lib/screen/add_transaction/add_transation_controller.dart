// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:peronal_money_mangment/model/categery/categery_model.dart';

// class AddTranscationController extends GetxController {
//   final TextEditingController purposeController = TextEditingController(),
//       amountController = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//   final Rx<DateTime> selectDate = DateTime.now().obs;
//   CategoryType? selectCategoryType;
//   CategeryModel? selectedCategoryModel;

//   onSelectDate(DateTime selectedDate) {
//     selectDate.value = selectedDate;
//     print('choice date${selectDate.value}');
//   }

//   onSubmitTranscation(BuildContext context) {
//     if (formKey.currentState!.validate()) {
//       purposeController.clear();
//       amountController.clear();
//       Navigator.of(context).pop();
//     }
//   }

//   onPurposeValidation(String value) {
//     if (value.isEmpty) {
//       return 'enter valid purpose';
//     }
//   }

//   onAmountValidation(String value) {
//     if (value.isEmpty) {
//       return 'enter vaild amount';
//     }
//   }

//   @override
//   void onInit() {
//     super.onInit();
//   }
// }
