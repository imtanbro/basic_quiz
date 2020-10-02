import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//extends informs dart that this calss willl be based on some other class
//and we can extext only 1 class at a time
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Hey"),
    );
  } //build is a method

}
