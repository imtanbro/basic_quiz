import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //important anotaion... it is so called decorator

  @override
//extends informs dart that this calss willl be based on some other class
//and we can extext only 1 class at a time
  Widget build(BuildContext context) {
    
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          title: Text(
            "My First App",
            style: TextStyle(color: Colors.yellowAccent),
          ),
        ),

        backgroundColor: Colors.black87,
        // body: Center(
        //   child: Text("My default Text",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 25),),
        // ),

        body: Column(
          children: [
            //[] dinots takes in list.
              Text("The Questions!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20),
                )


          ],
        ),
      ),
    );
  } //build is a method
}
