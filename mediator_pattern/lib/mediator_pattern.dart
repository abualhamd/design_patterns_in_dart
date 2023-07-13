import 'package:mediator_pattern/alarm.dart';
import 'package:mediator_pattern/coffee.dart';
import 'package:mediator_pattern/robot.dart';
import 'package:mediator_pattern/window.dart';
import 'package:mediator_pattern/calendar.dart';

class Mediator {
  late Alarm alarm;
  late Coffee coffee;
  late Robot robot;
  late Window window;
  late GetToday today;

  setMediatorData(
      Alarm alarm, Coffee coffee, Robot robot, Window window, GetToday today) {
    this.alarm = alarm;
    this.today = today;
    this.coffee = coffee;
    this.robot = robot;
    this.window = window;
  }

  int getDay() {
    return today.getDay();
  }

  void ring() {
    alarm.ring();
  }

  void openWindow() {
    window.openWindow();
  }

  void makeCoffee() {
    coffee.start();
  }

  void trasport() {
    robot.transport();
  }
}
