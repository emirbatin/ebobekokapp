import 'package:flutter/material.dart';

class txtSayiGir extends StatelessWidget {
  final TextEditingController controller;
  final String text;

  const txtSayiGir({Key? key, required this.text, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: text,
      ),
    );
  }
}
