/*SORU1: Parametre olarak bir tane int sayı alan fonk
yazınız. Bu fonk aldığı değere kadar olan çift sayıların toplamını geriye 
döndürsün.

SORU2: Daire alanını hesaplayan fonk.u yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan değer 3,14 olsun

SORU 3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonk yazınız
Bu fonk kenar değerlerine göre bu üçgenin çeşit kenar veya eşkenar old. yazdırsın
geriye değer döndürmesin*/

void main(List<String> args) {}

/* SORU 2: 
double daireAlan(double r, [p = 3.14]) {
  return p * r * r;
} */

void ucgenAlani(
    {int BirinciKenar = 1, int IkinciKenar = 1, int UcuncuKenar = 1}) {
  if (BirinciKenar == IkinciKenar && BirinciKenar == UcuncuKenar) {
    print("Eşkenar üçgen");
  } else if (BirinciKenar == IkinciKenar &&
      BirinciKenar == UcuncuKenar &&
      IkinciKenar != UcuncuKenar) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar üçgen");
  }
}
