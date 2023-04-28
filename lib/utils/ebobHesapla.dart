int ebobHesapla(int sayi1, int sayi2) {
  int kucukSayi = (sayi1 < sayi2) ? sayi1 : sayi2;
  int buyukSayi = (sayi1 > sayi2) ? sayi1 : sayi2;

  if (buyukSayi % kucukSayi == 0) {
    return kucukSayi;
  }
  for (int i = kucukSayi ~/ 2; i >= 1; i--) {
    if (kucukSayi % i == 0 && buyukSayi % i == 0) {
      return i;
    }
  }
  return 1;
}
