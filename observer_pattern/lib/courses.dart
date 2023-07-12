import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/subjects.dart';

class Course implements Subject {
  String _name;
  late String availabe;
   List<Observer> observers = [];

  Course(this._name);

  @override
  void notfiyAll() {
    for (Observer observer in observers) {
      observer.update(_name);
    }
  }

  @override
  void subscribe(Observer observer) {
    observers.add(observer);
  }

  @override
  void unsubscribe(Observer observer) {
    observers.remove(observer);
  }

  void isAvaliable (bool availabe){
    this.availabe = _name + (availabe? " Available": " Not Available");
    notfiyAll();
  }
}
