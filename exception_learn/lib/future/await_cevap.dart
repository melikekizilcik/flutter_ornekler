void main(List<String> args) async {
  Map<String, dynamic> gelenUser = await idyeGoreUserGetir(6);
  List kurslarListesi = await usernameGoreKurslariGetir(gelenUser['username']);
  String yorum = await kursunYorumunuGetir(kurslarListesi[0]);
  print(yorum);
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
