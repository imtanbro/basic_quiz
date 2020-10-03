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
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //important anotaion... it is so called decorator

  var index = 0;

  void answerQuestion() {
    setState(() {
      index++;
    });
    // index++;
    print(index);
  }

  @override
//extends informs dart that this calss willl be based on some other class
//and we can extext only 1 class at a time11
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite food'
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

        backgroundColor: Colors.black12,
        // body: Center(
        //   child: Text("My default Text",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 25),),
        // ),

        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              children: [
                //[] dinots takes in list.

                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    (questions[index]),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),

                RaisedButton(
                  child: Text(
                    "Answer 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: answerQuestion,
                ),

//onPressed: answerQuestion().... this returns the value of the fuction which is null ie. it returns nothing

                RaisedButton(
                  child: Text(
                    "Answer 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: answerQuestion,

                  //if incase you want to pass a unique function to each button then.
                  //onPressed: () => print("Hey"),
                ),

                RaisedButton(
                  child: Text(
                    "Answer 3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    print("Answer 3 answered");
                  },
                ),

                RaisedButton(
                  child: Text(
                    "Answer 4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: answerQuestion,
//this acts as a pointer
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } //build is a method
}
