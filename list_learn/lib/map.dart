void main(List<String> args) {
  Map<String, int> alanKodlari = {
    //"KEY" : VALUE
    "Ankara": 312,
    "İstanbul": 212,
    "Bursa": 224
  };

  print(alanKodlari);
  print(alanKodlari["Bursa"]);

//dynamic yerine object de diyebiliriz
  Map<String, dynamic> Melike = {
    "Soyad": "Kızılcık",
    "Yaş": 22,
    "ogrenciMi": true
  };

  print(Melike["Soyad"]);

  //Boş bir map yapisi olusturmak icin:
  Map<String, dynamic> bosMap = Map();
  Map<String, dynamic> bosMap2 = {};

  //Bos Map'e deger atama:
  bosMap["Yaş"] = 15;
  print(bosMap);

  //MAP GEZME:
  //sadece KEY gezeceksek:

  for (String Keys in alanKodlari.keys) {
    print(Keys);
  }

  for (dynamic Values in Melike.values) {
    print(Values);
  }

  //Hem key hem value gezmek için "entries" kavramini kullaniyoruz:
  for (var element in Melike.entries) {
    print("Key değeri: ${Melike.keys} Value değer: ${Melike.values}");
  }

  //Metot ornegi:
  if (Melike.containsKey("Yaş")) {
    print("Melike Yaş: ${Melike["Yaş"]}");
  }
}
