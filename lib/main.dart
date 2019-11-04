import 'package:flutter/material.dart';
import 'package:gotrist/screens/home.dart'; //class void

void main(){
  runApp(MyApp()); //MyApp = class, MyApp() = object
}

//stl
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home() ,);
  }
}