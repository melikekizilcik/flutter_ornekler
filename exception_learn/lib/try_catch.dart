void main(List<String> args) {
  print("Program başladı");

  try {
    int sayi = 100 ~/ 0;
  } on IntegerDivisionByZeroException {
    print("Sıfıra bölünmez");
  } on FormatException catch (e) {
    print("Hata : ${e}");
  } finally {
    print("Hata bitti");
  }

  print("Program bitti");
}
