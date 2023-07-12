import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/observer_pattern.dart';

class OctalObserver implements Observer {
  @override
  late Subject subject;

  OctalObserver(this.subject){
    subject.attach(this);
  }
 
  @override
  void update() {
      print('Octal String: ${subject.getState().toRadixString(8)}');
  }
}