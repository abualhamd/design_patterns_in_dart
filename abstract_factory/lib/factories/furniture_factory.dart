import 'package:abstract_factory/enums/enums.dart';
import 'package:abstract_factory/models/chair.dart';
import 'package:abstract_factory/models/couch.dart';

abstract class FurnitureFactory {
  Chair createChair();
  Couch createCouch();

  factory FurnitureFactory(FurnitureType type) {
    return switch (type) {
      FurnitureType.normal => NormalFurnitureFactory(),
      FurnitureType.victorian => VictorianFurnitureFactory(),
      FurnitureType.modern => ModernFurnitureFactory(),
    };
  }
}

class ModernFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() => ModernChair();
  @override
  Couch createCouch() => ModernCouch();
}

class NormalFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() => NormalChair();

  @override
  Couch createCouch() => NormalCouch();
}

class VictorianFurnitureFactory implements FurnitureFactory {
  @override
  Chair createChair() => VictorianChair();

  @override
  Couch createCouch() => VictorianCouch();
}
