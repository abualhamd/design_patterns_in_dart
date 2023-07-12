
import 'package:observer_pattern/courses.dart';
import 'package:observer_pattern/students.dart';

void main(){
  
  Course flutter = Course("Flutter");
  Students ahmed = Students("Ahmed");
  Students mohamjed = Students("Mohamjed");
  Students ali = Students("Ali");
  Students omar = Students("Omar");

flutter.subscribe(ahmed);
flutter.subscribe(mohamjed);
flutter.subscribe(omar);
flutter.subscribe(ali);

flutter.unsubscribe(ali);

flutter.isAvaliable(true);
}