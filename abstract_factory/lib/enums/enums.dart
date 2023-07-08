import '../factories/furniture_factory.dart';

enum FurnitureType {
  victorian,
  modern,
  normal;

  FurnitureFactory getFactory() {
    return switch (this) {
      victorian => VictorianFurnitureFactory(),
      modern => ModernFurnitureFactory(),
      normal => NormalFurnitureFactory(),
    };
  }
}