import 'dart:math';

void main(List<String> args) {
  try {
    double deger = karekokunuAl(25);
    print("Deger: ${deger.toStringAsFixed(2)}");
  } catch (e) {
    print(e);
  }
}

double karekokunuAl(int a) {
  if (a < 0) {
    throw FormatException("Sayı negatif olamaz");
  } else {
    return sqrt(a);
  }
}
