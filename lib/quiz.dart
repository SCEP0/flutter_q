import 'package:flutter/material.dart';
import 'question.dart';
import 'odgovor.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> question;
  final int redniBrojPitanja;
  final Function odgovorNaPitanje;
Quiz({
  @required this.question,
  @required this.odgovorNaPitanje,
  @required this.redniBrojPitanja});

  @override
  Widget build(BuildContext context) {

     return Column(
          children: [
            Pitanje(question[redniBrojPitanja]['tekstPitanja'] as String),
            // prvi nacin je .elementAt(1) drugi nacin je [1]
           ...(question[redniBrojPitanja]['odgovor'] as List<Map<String,Object>>).map((odgovor) {
            return Odgovor( ()=> odgovorNaPitanje(odgovor['score']),odgovor['text'] as String);
           }).toList()
          ],
        );
    
  }
}