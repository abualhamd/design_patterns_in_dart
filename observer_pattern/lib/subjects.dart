import 'package:observer_pattern/observer.dart';

abstract class Subject{
  void subscribe(Observer observer);
  void unsubscribe(Observer observer);
  void notfiyAll();
}