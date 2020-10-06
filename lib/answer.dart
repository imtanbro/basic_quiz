import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber,Colors.black])
      ),
      width: double.minPositive,
      child: RaisedButton(
                  child: Text(
                    "Answer 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: null,

                  //if incase you want to pass a unique function to each button then.
                  //onPressed: () => print("Hey"),
                ),
      
    );
  }
}