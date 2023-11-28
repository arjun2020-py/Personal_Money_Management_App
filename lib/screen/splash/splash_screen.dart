import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  final splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.touch_app,size: 50,color: Colors.orange,),
            RichText(text: TextSpan(
              text: 'MONEY',
              style: TextStyle(fontSize: 25),
              children: [
                TextSpan(
                  text: 'TAP',
                  style: TextStyle(fontSize: 25,color: Colors.red)
                )
              ]
            ),
            ),
          ],
        )
      ),
    );
  }
}
