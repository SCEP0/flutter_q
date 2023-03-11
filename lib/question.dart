import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pitanje extends StatelessWidget {
  final String pitanjaText;

  Pitanje(this.pitanjaText,);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        pitanjaText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
