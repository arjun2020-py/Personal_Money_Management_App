import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';

class IncomeCatageryList extends StatelessWidget {
  const IncomeCatageryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: CategoryDB.instance.incomeCategoryValueNotifer,
      builder: (context, newList, child) {
        return ListView.separated(
          itemCount: newList.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            var category = newList[index];
            return Card(
              child: ListTile(
                title: Text(category.categeryName),
                trailing: IconButton(
                    onPressed: () {
                      CategoryDB.instance.deleteCategory(category.id);
                    },
                    icon: Icon(Icons.delete)),
              ),
            );
          },
        );
      },
    );
  }
}
