import 'dart:math';

void main(List<String> args) {
  Matematik m1 = Matematik(50, 25);

  m1.topla();
  m1.cikar();

  print(Matematik
      .pi); //class degiskeni old icin instance variable tanimlamamiza gerek yok, sinif uzerinden erisiyoruz

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();

  Matematik.sinifAdiniSoyle();

  print("Toplam işlem sayısı: ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  //instance variables (nesne degiskenlerine nesne uzerinden erisilir)
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;

  //class variable:
  static double pi = 3.14;
  static void sinifAdiniSoyle() {
    print("Matematik sınıfıyım");
  }

  //constructor:
  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi++;
    print("Toplam: ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Çıkarma: ${birinciSayi - ikinciSayi}");
  }
}
