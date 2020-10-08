import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function _Onclickaction;
  Answer(this.answer, this._Onclickaction);

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
          color: Colors.transparent,
          child: Text(
            answer,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          onPressed: _Onclickaction,
          //if incase you want to pass a unique function to each button then.
          //onPressed: () => print("Hey"),
        ),
      ),
    );
  }
}
