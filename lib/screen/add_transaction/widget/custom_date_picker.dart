import 'package:flutter/material.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(Icons.calendar_month),
      onPressed: () {},
      label: Text('Select Date'),
    );
  }
}
