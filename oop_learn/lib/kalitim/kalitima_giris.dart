void main(List<String> args) {
  User user1 = AdminUser();
  User user2 = NormalUser();
  User user3 = SadeceOkuyabilenUser();

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
}

void test(User kullanici) {
  kullanici.girisYap(); //Polimorfizim (cok bicimlilik)
}

//INHERITANCE
class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("User giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("Normal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisi() {
    print("Toplam kullanıcı sayısı");
  }

  @override
  void girisYap() {
    print("Admin user giriş yaptı");
  }
}

class SadeceOkuyabilenUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("Sade okuyabilen user giriş yaptı");
  }
}
