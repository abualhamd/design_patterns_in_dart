abstract class Animal {
  //? to return a default animal
  // factory Animal() = Lion;
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print('Woof!');
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print('Meow!');
  }
}

class Lion implements Animal {
  @override
  void sound() {
    print('Roar!');
  }
}
