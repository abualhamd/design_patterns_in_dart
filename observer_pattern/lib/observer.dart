import 'package:observer_pattern/observer_pattern.dart';

abstract class Observer {
    late Subject subject;
     void update();
}