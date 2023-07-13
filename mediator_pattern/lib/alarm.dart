
import 'mediator_pattern.dart';

class Alarm {
  late Mediator m;

  Alarm(this.m);

  void snooze() {
    int checkToday = m.getDay();
    if (checkToday != 6 || checkToday != 7) {
      m.makeCoffee();
    }
  }

  void ring() {
    print("Alarm Ringing");
  }
}
