import 'dart:ffi';

import 'package:flutter/material.dart';

class btnHesapla extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const btnHesapla({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
