import 'package:basic_quiz/answer.dart';
import 'package:basic_quiz/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//trying to write a function

// stylingSub(String name){
//     Text("$name",
//     style: TextStyle(
//         color: Colors.white,
//         fontSize: 20
//     ),);
// }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //important anotaion... it is so called decorator

  var _index = 0;

  void _answerQuestion() {
    setState(() {
      //changes state and rebuilds the build method.
      _index++;
    });
    // index++;
    print(_index);
  }

  @override
//extends informs dart that this calss willl be based on some other class
//and we can extext only 1 class at a time
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite food?',
      'What\'s your favourite drink?',
      'What\'s your favourite place?'
    ];

    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        //   title: Text(
        //     "Quiz",
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       letterSpacing: 10,
        //       color: Colors.yellowAccent,
        //       fontSize: 28,
        //     ),
        //   ),
        // ),
        appBar: NavbarCustom("Quiz"),

        backgroundColor: Colors.black12,
        // body: Center(
        //   child: Text("My default Text",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 25),),
        // ),

        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //[] dinots takes in list.

                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Question(questions[_index % questions.length])),

//                 RaisedButton(
//                   child: Text(
//                     "Answer 1",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                   onPressed: _answerQuestion,
//                 ),

// //onPressed: answerQuestion().... this returns the value of the fuction which is null ie. it returns nothing

//                 RaisedButton(
//                   child: Text(
//                     "Answer 2",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                   onPressed: _answerQuestion,

//                   //if incase you want to pass a unique function to each button then.
//                   //onPressed: () => print("Hey"),
//                 ),

//                 RaisedButton(
//                   child: Text(
//                     "Answer 3",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                   // onPressed: () {
//                   //   print("Answer 3 answered");
//                   // },
//                   onPressed: _answerQuestion,
//                 ),

//                 RaisedButton(
//                   child: Text(
//                     "Answer 4",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                   onPressed: _answerQuestion,
// //this acts as a pointer
//                 ),

                Answer("Answer 1"),
                Answer("Answer 2"),
                Answer("Answer"),
                Answer("Answer is so"),
              ],
            ),
          ),
        ),
      ),
    );
  } //build is a method
}
