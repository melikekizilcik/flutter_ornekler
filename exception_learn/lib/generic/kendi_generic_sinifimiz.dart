class MyStack {
  List _listem = [];

  //listeye eleman eklemek icin:
  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  //listedeki son elemani silmek icin:
  pop() {
    return _listem.removeLast();
  }
}

class intMyStack {
  List<int> _intListem = [];

  void push(int yeniEleman) {
    _intListem.add(yeniEleman);
  }

  int pop() {
    return _intListem.removeLast();
  }
}

class StringMyStack {
  List<String> stringList = [];

  void push(String yeniEleman) {
    stringList.add(yeniEleman);
  }

  String pop() {
    return stringList.removeLast();
  }
}

class Generic<T> {
  List<T> _genericList = <T>[];

  void push(T yeniEleman) {
    _genericList.add(yeniEleman);
  }

  T pop() {
    return _genericList.removeLast();
  }
}
