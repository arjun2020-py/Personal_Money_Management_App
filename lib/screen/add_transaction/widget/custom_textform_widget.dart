import 'package:flutter/material.dart';

import '../add_transation_controller.dart';

class customTextformWidget extends StatelessWidget {
   customTextformWidget(
      {super.key,
      required this.hinttext,
      required this.textInputType,
     
      required this.controller,
      required  this.validator
      });
  final String hinttext;
  final TextInputType textInputType;

  final TextEditingController controller;
  String? Function(String?)?validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: textInputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: hinttext,
        ),
      ),
    );
  }
}
