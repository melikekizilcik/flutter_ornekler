void main(List<String> args) {
  double doubleOrt = ortalamaBul<double>(5, 5.4);
  print("Ortalama: ${doubleOrt}");

  int intOrt = ortalamaBul<int>(8, 5) as int;
  print("Ortalama: ${intOrt}");
}

//Numbers'tan extends olan T turunde degiskenlerin ortalamasini al
double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
