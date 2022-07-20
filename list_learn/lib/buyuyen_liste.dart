void main(List<String> args) {
  //Uzunluğu değişen listeler yaratmak için ilk yöntem:
  List<String> liste1 = [];
  liste1.add("Melike");
  liste1.add("Kızılcık");

  print((liste1.length));
  print(liste1);

  //İkinci yöntem:
  List<int?> liste2 = List.filled(3, 0, growable: true);
  //NULL onlemek icin int? yaptik
  liste2.add(6);
  liste2.add(2);
  liste2.add(19);
  print(liste2.length);
  print(liste2);

  liste2.length = 20;
  //listenin uzunlugunu degistirme NULL olacagi icin tavisye edilmez

  //ucuncu yontem - ilk yontem ile ayni anlama gelir
  List<int> liste3 = List.empty(growable: true);
  liste3.add(29);
  liste3.add(23);
  liste3.add(7);

  print(liste3.length);

  //dorduncu yontem direkt liste tanimlarken yazmak:
  List<int> sayilar = [10, 8, 6, 4, 2];
  print(sayilar);
}
