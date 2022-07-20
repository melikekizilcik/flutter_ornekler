void main(List<String> args) {
  idyeGoreUserGetir(5).then((value) {
    usernameGoreKurslariGetir(value['username']).then((List kurslarListesi) {
      String ilkKurs = kurslarListesi[0];

      kursunYorumunuGetir(ilkKurs).then((String value) {
        print(value);
      });
    });
  });
}

Future<String> kursunYorumunuGetir(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Çok faydalı bir kurs";
  });
}

Future<List> usernameGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['Flutter', 'Kotlin', 'Javascript'];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'melikekizilcik', 'id': id};
  });
}
