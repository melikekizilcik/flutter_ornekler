void main(List<String> args) {
  Ogrenci ayse = Ogrenci.factoryKurucu(-9, "Ayşe");
  print(ayse.id);
  print(ayse.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.isim, this.id) {
    print("Yapıcı metot çalıştı");
  }

  Ogrenci.idsizKurucuMetot(this.isim) {
    print("ID'siz kurucu metot çalıştı");
  }

  //Factory'de ise kendimiz şart yazabiliyoruz:
  factory Ogrenci.factoryKurucu(int id, String isim) {
    if (id < 0)
      return Ogrenci(isim, 5);
    else
      return Ogrenci(isim, id);
  }
}
