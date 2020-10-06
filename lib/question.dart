import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.black]),
      ),
      child: Text(
        questionText,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      alignment: Alignment.center,
    );
  }
}

class NavbarCustom extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String titlenav;

  NavbarCustom(
    this.titlenav, {
    Key key,
  })  : preferredSize = Size.fromHeight(60),
        super(key: key);

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
      title: Text(
        titlenav,
        style: TextStyle(
          color: Colors.yellowAccent,
          fontSize: 28,
          letterSpacing: 10,
        ),
      ),
    );
  }
}
