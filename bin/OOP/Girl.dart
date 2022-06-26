import 'dart:io';

import 'person.dart';

class Girls extends Person{

  @override void eat(){
    super.eat();
    //Super.eat();
    print('person ');
  }
}