import 'package:factory_pattern/enums/enums.dart';

abstract class Animal {
  //? to return a default animal
  // factory Animal() = Lion;

 factory Animal(AnimalType type) {
   return switch (type) {
       AnimalType.cat=>  Cat(),
       AnimalType.lion=>  Lion(),
       AnimalType.dog=>  Dog()
    };
  }
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}
class Cat implements Animal{
  @override
  void makeSound() {
    print("Meow");
  }
}
class Lion implements Animal{
  @override
  void makeSound() {
    print("Roar");
  }


}
