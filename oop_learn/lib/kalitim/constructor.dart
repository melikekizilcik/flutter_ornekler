void main(List<String> args) {
  Asker emre = Asker("Emre", 25);
  Er hasan = Er("Hasan", 26);
}

class Asker {
  String isim = "";
  int yas = 0;
  String memleket = "Ankara";
  //constructor:
  Asker(this.isim, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("Merhaba adım $isim ve yaşım $yas");
  }
}

class Er extends Asker {
  //calisirken ilk olarak ust sinifin constructori calisacak
  Er(String isim, int yas) : super('', 0) {
    print("Er sınıfının kurucusu çalıştı");
  }
}

class Deneme extends Er {
  Deneme(String isim, int yas) : super('', 0) {
    print("Deneme sınıfının kurucusu çalıştı");
  }
}

/*void memleketDegistir(String yeniMemleket) {
  super.memleket = yeniMemleket; 
} */
