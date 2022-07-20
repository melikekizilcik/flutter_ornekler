import 'package:oop_learn/getter_setter/musteri.dart';
import 'package:oop_learn/getter_setter/veritabani_islemleri.dart';

void main(List<String> args) {
  veritabaniIslemleri db =
      veritabaniIslemleri.loginWithNamePassword("Melike", "123456");
  bool sonuc = db.baglan();
  if (sonuc == true) {
    print("Bağlandı");
  } else {
    print("Bağlanmadı");
  }

  Musteri m1 = Musteri(203);
  m1.bilgileriGetir();

  Musteri m2 = Musteri(900);
  m2.bilgileriGetir();

  m1.musteriNoAta = 557;
  print(m1.musteriNoSoyle);
}
