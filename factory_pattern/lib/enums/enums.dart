import '../models/animals.dart';

enum AnimalType {
  cat,
  dog,
  lion;

  Animal createAnimal() {
    return switch (this) {
      cat => Cat(),
      dog => Dog(),
      lion => Lion(),
    };
  }
}
