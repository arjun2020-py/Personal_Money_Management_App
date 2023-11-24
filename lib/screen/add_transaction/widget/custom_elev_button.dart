import 'package:flutter/material.dart';
import 'package:peronal_money_mangment/db/transation/transcation_db.dart';
import 'package:peronal_money_mangment/screen/transactions/model/transcation_model.dart';

import '../../../function/transaction/transcation_fun.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: ElevatedButton(
        onPressed: () {
          onSubmitTranscation(context);
          //function
        },
        child: Text('Add'),
      ),
    );
  }

  Future<void> addTranscation() async {
    final _puropseText = purposeController.text;
    final _amountText = amountController.text;

    //dropdwon list.
    if (categoryID == null) {
      return;
    }

    //select Date
    if (selectDate == null) {
      return;
    }
    final _parseAmount = double.tryParse(_amountText); //number only parse.
    if (_parseAmount == null) {
      return;
    }
    if (selectedCategoryModel == null) {
      return;
    }
    // create transcation model.
    final _model = TranscationModel(
        purpose: _puropseText,
        amount: _parseAmount,
        date: selectDate!,
        type: selectCategoryTypeNotfier.value,
        model: selectedCategoryModel!);

    TransactionDB.instance.addTransaction(_model);
  }
}
