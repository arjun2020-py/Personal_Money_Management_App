import 'package:flutter/material.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Add'),
      ),
    );
  }
}
