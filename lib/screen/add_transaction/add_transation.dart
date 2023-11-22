import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_transation_controller.dart';
import 'widget/custom_column.dart';

class AddTransaction extends StatelessWidget {
  AddTransaction({super.key});
  static const router = 'add_transcation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: Text(
          'Add Transcation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: CustomColoumWidget(
      
      )),
    );
  }
}
