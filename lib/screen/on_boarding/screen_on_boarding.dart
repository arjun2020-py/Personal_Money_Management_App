import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peronal_money_mangment/screen/home/screen_home.dart';
import 'package:peronal_money_mangment/utils/custom_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_board_controller.dart';
import 'widget/custom_on_board_widget.dart';

class ScreenOnboarding extends StatelessWidget {
  ScreenOnboarding({super.key});
  final controller = Get.put(onBoardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller.pageController,
          onPageChanged: (index) => controller.onLastPage(index),
          children: [
            CustomBuildPage(
              imageUrl: CustomImages().transcation,
              title: 'Transcation',
              decrption: '',
              color: Colors.red,
            ),
            CustomBuildPage(
                imageUrl: CustomImages().income,
                title: 'Income',
                decrption: '',
                color: Colors.indigo),
            CustomBuildPage(
                imageUrl: CustomImages().expense,
                title: 'Expense',
                decrption: '',
                color: Colors.green)
          ],
        ),
      ),
      bottomSheet: Obx(
        () => controller.isLastPage.value
            ? TextButton(
                onPressed: () {
                  Get.to(ScreenHome());
                },
                child: Text('Get Started'),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.teal.shade100,
                    minimumSize: Size.fromHeight(80)))
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () =>
                            controller.pageController.jumpToPage(2),
                        child: Text('SKIP')),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller.pageController,
                        count: 3,
                        effect: WormEffect(
                            spacing: 16,
                            dotColor: Colors.black26,
                            activeDotColor: Colors.teal.shade700),
                        onDotClicked: (index) => controller.pageController
                            .animateToPage(index,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut),
                      ),
                    ),
                    TextButton(
                        onPressed: () => controller.pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Text('NEXT')),
                  ],
                ),
              ),
      ),
    );
  }
}
