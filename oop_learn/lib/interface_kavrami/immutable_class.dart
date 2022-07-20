void main(List<String> args) {
  const Student melike = const Student(5, "Melike");
  final Student melike2 = const Student(5, "Melike");

  if (melike == melike2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);

  //final yaptigimiz icin main'de id ve isim degerleri degistirilemez
  //const yaptigimiz icin melike ve melike2'ye aynı degerler girilirse bellekte ayrı bolumler acilmez
}
