

import 'package:observer_pattern/binary_observer.dart';
import 'package:observer_pattern/hexdecimal_observer.dart';
import 'package:observer_pattern/observer_pattern.dart';
import 'package:observer_pattern/octal_observer.dart';

void main() {
  Subject subject = Subject();

  HexDecimalObserver(subject);
  OctalObserver(subject);
  BinaryObserver(subject);

  print("First state change: 15");
  subject.setState(15);
  print("Second state change: 10");
  subject.setState(10);
}

