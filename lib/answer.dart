import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: double.infinity,
        height: 120,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.white70,
            width: 1,
          ),
        ),
        child: RaisedButton(
          child: Text(
            "Answer is this do you undestand, I am trying to say spmething Will",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          onPressed: null,
          //if incase you want to pass a unique function to each button then.
          //onPressed: () => print("Hey"),
        ),
      ),
    );
  }
}
