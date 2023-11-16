import 'package:flutter/material.dart';

class ExpenseCatageryList extends StatelessWidget {
  const ExpenseCatageryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 10,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text('Expense Catagery ${index}'),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ),
        );
      },
    );
  }
}
