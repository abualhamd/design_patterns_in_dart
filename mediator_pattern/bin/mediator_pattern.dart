import 'package:mediator_pattern/alarm.dart';
import 'package:mediator_pattern/calendar.dart';
import 'package:mediator_pattern/coffee.dart';
import 'package:mediator_pattern/mediator_pattern.dart';
import 'package:mediator_pattern/robot.dart';
import 'package:mediator_pattern/window.dart';

void main() {
  Mediator m = Mediator();
  Alarm alarm = Alarm(m);
  Coffee coffee = Coffee(m);
  Robot robot = Robot(m);
  Window window = Window();
  GetToday today = GetToday();

  m.setMediatorData(alarm, coffee, robot, window, today);
  alarm.snooze();
}
