import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';
import 'package:peronal_money_mangment/screen/catagery/screen_catagery.dart';
import 'package:peronal_money_mangment/screen/transactions/screen_transactions.dart';

import '../catagery/custom_popup_button.dart';
import 'widgets/bottom_navigation.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  static ValueNotifier<int> selectedIndexNotfier = ValueNotifier(0);
  final _pages = [ScreenTrnasation(), ScreenCatagery()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MoneyMangmentButtonNaviButton(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          if (selectedIndexNotfier.value == 0) {
            print('add trnsation data');
          } else {
            print('add catagery data');
            showCategoryAddPopup(context);
            // final _categryValues = CategeryModel(
            //     id: DateTime.now().millisecondsSinceEpoch.toString(),
            //     categeryName: 'travel',
            //     type: CategoryType.expense);
            // print('----------------------------------0');
            // CategoryDB().instertCategory(_categryValues);
          }
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'MONEY MANAGER',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: selectedIndexNotfier,
        builder: (context, value, child) {
          return _pages[value];
        },
      )),
    );
  }
}
