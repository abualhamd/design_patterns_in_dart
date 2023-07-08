import 'dart:io';
import 'package:abstract_factory/enums/enums.dart';
import 'package:abstract_factory/factories/furniture_factory.dart';

void main() {
  print('Enter 1 for Victorian, 2 for Modern, and 3 for Normal');
  int choice = int.parse(stdin.readLineSync() ?? '0');

  if (choice > 0 && choice <= FurnitureType.values.length) {
    FurnitureFactory furnFactory =
        FurnitureType.values[choice - 1].getFactory();

    furnFactory.createChair().sitOn();
  } else {
    print('please choose only one of the offered options');
  }
}
