void main(List<String> args) {
  Araba honda = new Araba(2010, "civic", true);
  honda.bilgileriSoyle();
  honda.arabaYasiHesapla();

  Araba bmw = Araba.modelAdiOlmayanKurucuMetot(2022, true);
  bmw.bilgileriSoyle();
  bmw.arabaYasiHesapla();
}

class Araba {
  int? modelYili;
  String? modelAdi;
  bool? otomatikMi;

  //constructor blogu yaziyoruz. main blogunda araba nesnesi new'lendiginde calisacak

  //KISAYOL: mainde aldigimiz degerleri class icindekiler ile eslestirdik (class icindekileri this ile gosteriyoruz)
  Araba(this.modelYili, this.modelAdi, this.otomatikMi) {
    print("Constructor çalıştı");
  }

  //EKSİK PARAMETRELİ CONSTRUCTOR OLUŞTURMA (NAMED CONSTRUCTOR):
  Araba.modelAdiOlmayanKurucuMetot(this.modelYili, this.otomatikMi) {
    print("Model adı olmayan kurucu metot çalıştı");
  }

  Araba.modelYiliOlmayanKurucuMetot(this.modelAdi, this.otomatikMi) {
    print("Model Yılı olmayan kurucu metot çalıştı");
  }
  /*
  Araba(int modelYili, String modelAdi, bool otomatikMi) {
    print("Kurucu metot çalıştı");
    this.modelYili = modelYili;
    this.modelAdi = modelAdi;
    this.otomatikMi = otomatikMi;
  } */

  void bilgileriSoyle() {
    print(
        "Arabanın modeli: ${modelAdi}, otomatik mi: ${otomatikMi}, model yılı: ${modelYili}");
  }

  void arabaYasiHesapla() {
    if (modelYili != null) {
      print("Arabanın yaşı: ${2022 - modelYili!}");
    } else {
      print("Model yılı bilgisi olmadığından hesaplanamadı");
    }
  } //modelYili'nin sonuna ! koymamiz hiçbir zaman Null olmayacagi anlamina gelir
}
