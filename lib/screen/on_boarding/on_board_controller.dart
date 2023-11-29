import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peronal_money_mangment/screen/on_boarding/model/on_board_model.dart';
import 'package:peronal_money_mangment/utils/custom_utils.dart';

class onBoardController extends GetxController {
  final pageController = PageController();
  final RxBool isLastPage = false.obs;

  final List<OnBoardModel> onBoardData = [
    OnBoardModel(
        title: 'Transcation',
        decrption:
            'typically refers to any activity that involves the movement of money',
        image: CustomImages().transcation,
        color: Colors.white),
    OnBoardModel(
        title: 'Income',
        decrption:
            'It is the total amount of money earned or received over a specific period.',
        image: CustomImages().income,
        color: Colors.white),

    OnBoardModel(title: 'Expense', decrption: ' the cost or amount of money spent on something', image: CustomImages().expense, color: Colors.white)    
  ];
  onLastPage(int index) {
    isLastPage.value = index == 2;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
