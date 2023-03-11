import 'package:flutter/material.dart';

class Odgovor extends StatelessWidget {
  final Function odabraniHendler;
  final String odgovorT; 
  Odgovor(this.odabraniHendler,this.odgovorT);


  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.green),
foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
),
        child: Text(odgovorT),
        onPressed:odabraniHendler,
      ),
    );
  }
}
