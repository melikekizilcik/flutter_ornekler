void main(List<String> args) {
  int toplam = sayilariTopla(
      s2: 5,
      s3: 2,
      s1: 2); //optional named de isimleri istediğimiz sıra ile verebiliyoruz

  print("Sonuç: $toplam");
}

/*
//required parameter (parametreler zorunlu)
int sayilariTopla(int s1, int s2, int s3) {
  return s1 + s2 + s3;
} */

/*
//optional
int sayilariTopla(int s1, int s2, [int s3 = 0]) {
  //Eğer s3'e default değer atamazsak null olur ve null, sayılar ile toplanamaz HATA olur
  return s1 + s2 + s3;
} */

//optional named
int sayilariTopla(
    {int s1 = 0, int s2 = 0, int s3 = 0}) //ileride s4 de eklenebilir tabii ki
{
  //Eğer kullanıcı sayı girmezse diye default değer atadık
  return s1 + s2 + s3;
}

//ya sadece {} kullanacağız ya da sadece [] kullanacağız ikisi aynı anda olmaz