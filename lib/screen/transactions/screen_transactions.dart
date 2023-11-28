import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:peronal_money_mangment/db/category/category_db.dart';
import 'package:peronal_money_mangment/db/transation/transcation_db.dart';
import 'package:peronal_money_mangment/function/transaction/transcation_fun.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

class ScreenTrnasation extends StatelessWidget {
  const ScreenTrnasation({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryDB.instance.refreshUI();
    TransactionDB.instance.refresh();
    return ValueListenableBuilder(
      valueListenable: TransactionDB.instance.transcationListNotfier,
      builder: (context, newList, child) {
        return ListView.separated(
          padding: EdgeInsets.all(10),
          itemCount: newList.length,
          separatorBuilder: (BuildContext context, int index) {

            
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            final _values = newList[index];
            print('-----------------------------------');
            print('transcation length ${newList.length}');
            return Slidable(
              key: Key(_values.id!),
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      TransactionDB.instance.deleteTranscation(_values.id!);
                    },
                    icon: Icons.delete,
                    backgroundColor: Colors.red,
                    label: 'Delete',
                  )
                ],
              ),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: _values.type == CategoryType.income
                          ? Colors.green
                          : Colors.red,
                      radius: 30,
                      child: Text(
                        //  '12\n DEC',
                        parseDate(_values.date),
                        textAlign: TextAlign.center,
                      )),
                  title: Text('RS ${_values.amount.toString()}'),
                  subtitle: Text(_values.model.categeryName),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
