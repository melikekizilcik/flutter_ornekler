class Musteri {
  int? musteriNo;

  //Musteri(this.musteriNo);

  //Constructor metot:
  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  //Getter ve setter ile yapilisi:

  String get musteriNoSoyle {
    return "Müşteri no: ${this.musteriNo}";
  }

  void set musteriNoAta(int no) {
    if (no > 300) {
      this.musteriNo = no;
    } else {
      return;
    }
  }

  //Musteri no kontrol fonksiyonu
  void _musteriNoKontrol(int no) {
    if (no > 300) {
      this.musteriNo = no;
    } else {
      return;
    }
  }

  void bilgileriGetir() {
    print("Müşteri oluşturuldu: ${musteriNo}");
  }
}
