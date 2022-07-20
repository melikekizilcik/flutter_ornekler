void main(List<String> args) {}

abstract class Hayvan {}

abstract class Ucabilenler {
  void fly();
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

abstract class Yuzebilenler {
  void swim();
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Insan implements Kosabilenler {
  @override
  void run() {
    // TODO: implement run
  }
}
