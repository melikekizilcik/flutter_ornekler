void main(List<String> args) {
  Sekil s1 = Kare(4);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();
}

abstract class Sekil {
  //abstract siniflardan nesne olusturulmaz
  double alanHesapla();
  double cevreHesapla();

  void selamla() {
    print("Ben şekil sınıfındanım");
  }
}

class Kare extends Sekil {
  int kenar; //karenin ozelliklerini tanimladik

  //constructor:
  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }
}

class Dikdortgen extends Sekil {
  double en = 0;
  double boy = 0;

  @override
  double alanHesapla() {
    return en * boy;
  }

  @override
  double cevreHesapla() {
    return (en + boy) * 2;
  }
}
