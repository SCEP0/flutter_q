import "package:flutter/material.dart";

class Rezultat extends StatelessWidget {
final int brojPoena;
final Function restartQuiz;

Rezultat(this.brojPoena, this.restartQuiz);

String get rezultatPhrase{
  String rezultatText;

  if (brojPoena==0){
    rezultatText="Imao si 0 tačnih odgovora! Probaj ponovo";
  }
  else if(brojPoena==1){
    rezultatText="Samo 1 odgovor je bio tačan!";
  }
  else if (brojPoena==2){
    rezultatText="Ostvario si samo 2 tačna odgovora!";
  }
  else if (brojPoena==3){
    rezultatText="Imaš 3 tačna odgovora! Treba da probaš ponovo!";
  }
  else if (brojPoena==4){
    rezultatText="Ostvario si 4 poena! Može to bolje...";
  }
  else if (brojPoena==5){
    rezultatText="Imao si 50% tačnosti! Nastavi tako";
  }
  else if (brojPoena==6){
    rezultatText="Ostvario si 6 tačnih odgovora!";
  }
  else if (brojPoena==7){
    rezultatText="Čak 7 tačnih odgovora!";
  }
  else if (brojPoena==8){
    rezultatText="Odličan rezultat! Imao si 8 tačnih odgovora!";
  } 
  else if (brojPoena==9){
    rezultatText="Skoro pa savršeno, 9/10 tačnih odgovora!";
  }
  else {
    rezultatText="Maksimalan broj poena!Svaka čast!";
  }
return rezultatText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: <Widget>[
      Text(
                  rezultatPhrase,
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  ),
                  ElevatedButton(child: Text('Restart quiz'), onPressed:restartQuiz,
                  style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.red),
foregroundColor: MaterialStateProperty.all<Color>(Colors.white)
),),
                  ],
                  ),
                  );
  }
} 