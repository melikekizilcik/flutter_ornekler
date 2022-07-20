void main(List<String> args) {
  //Function parametresini kullanrak da fonksiyon yazabiliriz:
  //Isimsiz fonksiyon oldugu icin buna lambda expression denir

  Function fonk1 = (int a, int b) {
    int sonuc = a + b;
    print(sonuc);
  };

//fonk1'i calistirmak icin:
  fonk1(3, 5);

  /* (int s2) => s2*2
  ve
  (int s2){
    return s2*2; 
  }
  ifadesi aynıdır */
}

//Normal fonskiyon:
void sayilariTopla(int a, int b) {
  int sonuc = a + b;
  print(sonuc);
}
