void main(List<String> args) {
  Veritabani firebase = Firebase();
  firebase.userDelete();
  firebase.userSave();
  firebase.userUpdate();

  userGuncelle(firebase);
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

void userGuncelle(Veritabani veritabani) {
  print("User guncelle - veritabanı");
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("userDelete - oracleDB");
  }

  @override
  void userSave() {
    print("userSave - oracleDB");
  }

  @override
  void userUpdate() {
    print("userUpdate - oracleDB");
  }
}

class Firebase extends Veritabani {
  @override
  void userDelete() {
    print("userDelete - Firebase");
  }

  @override
  void userSave() {
    print("userSave - Firebase");
  }

  @override
  void userUpdate() {
    print("userUpdate - Firebase");
  }
}
