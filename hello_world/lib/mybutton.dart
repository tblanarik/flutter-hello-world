import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //style: raisedButtonStyle,
      onPressed: () {
        print("HELLO 2");
      },
      child: Text('NICE'),
    );
  }
}
