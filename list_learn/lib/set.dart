void main(List<String> args) {
  //SET YAPISI:

  Set<String> isimler = Set();
  isimler.add("Melike");
  isimler.add("Fatma");
  isimler.add("Mehmet");
  isimler.add("Melike");
  isimler.add("Melike");
  isimler.add("Melike");
  isimler.add("Melike");

  for (String isim in isimler) {
    print("İsim: $isim");
  }

  bool sonuc = isimler.remove("Melike");
  print("Silindi mi: $sonuc");

  bool sonuc2 = isimler.remove("Ayşe");
  print("Silindi mi: $sonuc2");
  //Ayse ismi olmadigi icin false doner

  //print(isimler[0]) : HATA verir cunku set yapisinda sira OLMAZ

  Set<int> sayilar = Set.from([3, 4, 5, 6, 7, 1, 1, 1, 1, 1, 1, 1, 1]);
  for (int sayi in sayilar) {
    print(sayi);
  }
}
