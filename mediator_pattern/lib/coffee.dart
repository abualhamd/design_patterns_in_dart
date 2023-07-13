
import 'package:mediator_pattern/mediator_pattern.dart';

class Coffee {

late Mediator m ;

  Coffee(this.m);

   
   
   void start (){
    print("Preparing Coffee");
    print("Finished Coffee");
   
   int getDay = m.getDay();
   if (getDay == 3){
    print("Adding extra sugar");
   }
    m.trasport();
   }

  
}