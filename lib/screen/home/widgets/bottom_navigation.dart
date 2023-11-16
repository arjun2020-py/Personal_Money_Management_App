import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/screen/home/screen_home.dart';

class MoneyMangmentButtonNaviButton extends StatelessWidget {
  const MoneyMangmentButtonNaviButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotfier,
      builder: (context, value, child) {
        return BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: value,
          onTap: (newIndex) {
            //Bottom navi bar icon button clik index store chythe vekaunuoo.
            ScreenHome.selectedIndexNotfier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_sharp), label: 'Catagery')
          ],
        );
      },
    );
  }
}
