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
                    child: Text("The Questions!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                      ),
                    ),
                  ),

                  RaisedButton(child: Text("Answer 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20, 
                  ),),
                  onPressed: null,),

                  RaisedButton(child: Text("Answer 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20, 
                  ),),
                  onPressed: null,),

                  RaisedButton(child: Text("Answer 3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20, 
                  ),),
                  onPressed: null,
                  ),

                  RaisedButton(child: Text("Answer 4",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20, 
                  ),),
                  onPressed: null,),


              ],
            ),
          ),
        ),
      ),
    );
  } //build is a method
}
