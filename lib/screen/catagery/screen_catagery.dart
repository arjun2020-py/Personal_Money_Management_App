import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';
import 'package:peronal_money_mangment/screen/catagery/expense/screen_expense.dart';
import 'package:peronal_money_mangment/screen/catagery/income/screen_income.dart';

class ScreenCatagery extends StatefulWidget {
  const ScreenCatagery({super.key});

  @override
  State<ScreenCatagery> createState() => _ScreenCatageryState();
}

class _ScreenCatageryState extends State<ScreenCatagery>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    CategoryDB().refreshUI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(
                text: 'INCOME',
              ),
              Tab(
                text: 'EXPENSE',
              )
            ]),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: [IncomeCatageryList(), ExpenseCatageryList()]),
        )
      ],
    );
  }
}
