import 'package:mediator_pattern/mediator_pattern.dart';

class Robot {
  late Mediator m;

  Robot(this.m);
  void transport() {
    print("Robot OIW");
    print("Robot Arrived");
    m.ring();
    m.openWindow();
  }
}
