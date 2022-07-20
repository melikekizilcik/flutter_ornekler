void main(List<String> args) {
  List<int> sayilar = [10, 9, 7, 6];

  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }

  print("Liste boş mu: " + sayilar.isEmpty.toString());
  print("Eleman sayisi: ${sayilar.length}");
  print("Ters sırada: ${sayilar.reversed}");
  //sadece yazdirirken sirasi degisir ana yapi bozulmaz

  sayilar.add(23);
  print(sayilar);

  sayilar.remove(23); //verilen elemani siler
  print(sayilar);

  sayilar.removeAt(2); //verilen indexteki elemani siler
  print(sayilar);

  //liste 2'yi iceriyor mu kontrolu:
  if (sayilar.contains(3)) {
    print("Listede 2 var");
  } else {
    print("Listede 2 yok");
  }

  //verilen indexteki elemani getirme:
  print(sayilar.elementAt(4));

  //7'nin indexini ver:
  print(sayilar.indexOf(7));

  //listedeki elemanlarin yerlerini degistir, listeyi etkiler reversed gibi degildir. (kart karma ornek)
  sayilar.shuffle();
  print(sayilar);

  sayilar.clear(); //listeyi temizle
  print(sayilar);
}
