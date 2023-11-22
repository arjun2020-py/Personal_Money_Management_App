import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../function/transaction/transcation_fun.dart';

class CustomDatePicker extends StatefulWidget {
  CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(Icons.calendar_month),
      onPressed: () async {
        final selectedTempDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 30)),
            lastDate: DateTime.now());
        if (selectedTempDate == null) {
          return;
        } else {
          setState(() {
            selectDate = selectedTempDate;
          });
        }
      },
      label: Text(selectDate == null ? 'Select Date' : DateFormat('yyyy-MM-dd').format(selectDate!)),
    );
  }
}
