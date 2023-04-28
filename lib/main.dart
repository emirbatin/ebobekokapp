import 'package:flutter/material.dart';
import 'package:ebobekokapp/ui/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebob ve Ekok Hesaplama',
      home: EbobEkokHesaplama(),
    );
  }
}
