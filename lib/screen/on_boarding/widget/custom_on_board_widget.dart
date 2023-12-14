import 'package:flutter/material.dart';

class CustomBuildPage extends StatelessWidget {
  const CustomBuildPage(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.decrption,
      required this.color});
  final String imageUrl;
  final String title;
  final String decrption;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageUrl),
                SizedBox(
                  height: 50,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(decrption)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
