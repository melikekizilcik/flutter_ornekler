void main(List<String> args) {
  try {
    Ogrenci melike = Ogrenci(-5);
    print(melike.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  }
}

class Ogrenci {
  int yas;

  Ogrenci(this.yas);
}

//Kendi hata sinifimizi yazma:
class AgeException implements Exception {
  String mesaj = "Age exception";

  AgeException({mesaj});
}
