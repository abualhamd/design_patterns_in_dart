import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/observer_pattern.dart';

class HexDecimalObserver implements Observer{
  @override
  late Subject subject;

HexDecimalObserver(this.subject){
  subject.attach(this);
}
  @override
  void update() {
    print ("HexDeciemal String : ${subject.getState().toRadixString(16)}");
  }

} 