import 'package:flutter/material.dart';

import '../../../function/transaction/transcation_fun.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton({super.key,});
 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: ElevatedButton(
        onPressed: () {
      onSubmitTranscation(context);
          
        },
        child: Text('Add'),
      ),
    );
  }
}
