import 'package:flutter/material.dart';
import './screen/HomePage.dart';
void main() {
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
 
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    );
  }

}
