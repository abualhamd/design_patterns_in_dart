import 'package:factory_pattern/enums/enums.dart';
import 'package:factory_pattern/models/animals.dart';

void main() {
  Animal dog = AnimalType.dog.createAnimal();
  Animal cat = AnimalType.cat.createAnimal();
  Animal lion = AnimalType.lion.createAnimal();

  dog.sound();
  cat.sound();
  lion.sound();
}
