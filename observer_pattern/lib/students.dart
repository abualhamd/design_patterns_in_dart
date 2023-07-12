import 'package:observer_pattern/observer.dart';

class Students implements Observer{

String name;

Students(this.name);

  @override
  void update(String msg) {
    print("${name}has received notification : $msg");
  }
}