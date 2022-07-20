import 'dart:math';

class veritabaniIslemleri {
  // alt cizgi koydugumuzda private olacak
  String _kullaniciAdi = "Melike";
  String _sifre = "123456";

  veritabaniIslemleri.loginWithNamePassword(String name, String password) {}

  bool baglan() {
    if (_internetVarMi() == true) {
      if (_kullaniciAdi == "Melike" && _sifre == "123456") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
