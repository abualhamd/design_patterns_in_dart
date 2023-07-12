import 'package:factory_pattern/enums/enums.dart';
import 'package:factory_pattern/models/animals.dart';

void main() {
  // Animal dog = AnimalType.dog.createAnimal();
  // Animal cat = AnimalType.cat.createAnimal();
  // Animal lion = AnimalType.lion.createAnimal();

  // dog.makeSound();
  // cat.makeSound();
  // lion.makeSound();

Animal cat = Animal(AnimalType.cat);
Animal dog = Animal(AnimalType.dog);
Animal lion = Animal(AnimalType.lion);

cat.makeSound();
dog.makeSound();
lion.makeSound();
}
