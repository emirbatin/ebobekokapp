import 'package:ebobekokapp/widgets/btnHesapla.dart';
import 'package:ebobekokapp/widgets/txtBoxUserInput.dart';
import 'package:flutter/material.dart';
import 'package:ebobekokapp/utils/ebobHesapla.dart';

class EbobEkokHesaplama extends StatefulWidget {
  @override
  _EbobEkokHesaplamaState createState() => _EbobEkokHesaplamaState();
}

class _EbobEkokHesaplamaState extends State<EbobEkokHesaplama> {
  //TextField içerisindeki veriyi okur.
  final TextEditingController _sayi1Controller = TextEditingController();
  final TextEditingController _sayi2Controller = TextEditingController();

  int sayi1 = 0;
  int sayi2 = 0;
  int ebob = 0;
  int ekok = 0;

  void _hesapla() {
    setState(() {
      sayi1 = int.tryParse(_sayi1Controller.text) ?? 0;
      sayi2 = int.tryParse(_sayi2Controller.text) ?? 0;

      ebob = ebobHesapla(sayi1, sayi2);
      ekok = (sayi1 * sayi2) ~/ ebob;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ebob ve Ekok Hesaplama'),
      ),
      body: Container(
        //Padding içerisindeki widgeta her yere aynı uzaklığı vermek istiyorsam EdgeInsets kullan.
        padding: EdgeInsets.all(16.0),
        child: Column(
          //CrossAxisAlignment sağdan sola hizalama yapar
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            txtSayiGir(
              controller: _sayi1Controller,
              text: '1. Sayı Girin',
            ),
            SizedBox(height: 10.0),
            txtSayiGir(
              controller: _sayi2Controller,
              text: '2. Sayı Girin',
            ),
            SizedBox(height: 10.0),
            btnHesapla(text: 'Hesapla', onPressed: _hesapla),
            SizedBox(height: 10.0),
            Text(
              'Ebob: $ebob',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ekok: $ekok',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
