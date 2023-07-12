import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/observer_pattern.dart';

class BinaryObserver implements Observer {
  @override
  Subject subject;

  BinaryObserver(this.subject)
   {
    // this.subject = subject;
    subject.attach(this);
  }

  @override
  void update() {
    print('Binary String: ${subject.getState().toRadixString(2)}');
  }
}