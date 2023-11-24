import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';

class ScreenTrnasation extends StatelessWidget {
  const ScreenTrnasation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 10,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                child: Text(
                  '12\n DEC',
                  textAlign: TextAlign.center,
                )),
            title: Text('100000'),
            subtitle: Text('Travel'),
          ),
        );
      },
    );
  }
}
