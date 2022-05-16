import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String text = 'test';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        var resp = await getZen();
        setState(() {
          text = resp;
        });
      },
      child: Text(text),
    );
  }
}

Future<String> getZen() async {
  final response = await http.get(Uri.parse('https://api.github.com/zen'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception(response.body);
  }
}
