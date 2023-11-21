import 'package:flutter/material.dart';

class customTextformWidget extends StatelessWidget {
  const customTextformWidget(
      {super.key, required this.hinttext, required this.textInputType});
  final String hinttext;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hinttext,
        ),
      ),
    );
  }
}
