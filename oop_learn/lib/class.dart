void main(List<String> args) {
  //Ogrenci (instance) tanimlama:
  Ogrenci melike = Ogrenci();
  melike.ogrAd = "Melike";
  melike.ogrNo = 5557;
  melike.aktifMi = true;

  //var ile de tanımlayabiliriz
  var kemal = Ogrenci();
  kemal.ogrAd = "Kemal";
  kemal.ogrNo = 203;
  kemal.aktifMi = false;
}

class Ogrenci {
  //instance variable
  int ogrNo = 1;
  String? ogrAd = "";
  bool? aktifMi = true;
  //Nullable'dan dolayı soru isareti koyduk

  void dersCalis() {
    //class icinde tanımlanan fonksiyona metot denir
    print("Öğrenci ders çalışıyor");
  }
}
