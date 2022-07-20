void main(List<String> args) {
  //growable = false çünkü sabit uzunlukta
  List<int> sayilar = List.filled(
      5, 0); //5 uzunluğunda başlangıçta default değeri 0 olan integer listesi
  //listeyi doldurma:
  sayilar[0] = 2;
  sayilar[1] = 4;
  sayilar[4] = 6;

  print(sayilar);

  List<String> isimler = List.filled(3, "boş");
  isimler[0] = "Melike";
  isimler[1] = "Berke";

  for (var isim in isimler) {
    print(isim);
  }

  List dinamikListOrnek =
      List.filled(3, 0); //List<dynamic> şeklinde de yazılabilir
  dinamikListOrnek[0] = "String de yazabiliriz sayı da";
  dinamikListOrnek[1] = "Çünkü bu bir dynamic list";
  dinamikListOrnek[2] = 29072000;

  for (var ornek in dinamikListOrnek) {
    print(ornek);
  }

  //sabit boyutlu listelerde remove, add gibi metotlar calismaz
}
