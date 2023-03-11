import 'package:flutter/material.dart';
import './quiz.dart';
import 'rezultat.dart';
void main() {
  //void main()=>runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

    final _question = const [
        {'tekstPitanja': 'U kojem se gradu održavaju Olimpijske igre 2024. godine?', 
      'odgovor': [{ 'text': 'Pariz', 'score':1},{ 'text': 'Madrid', 'score':0},{ 'text': 'Tokio', 'score':0}]
      },
        {'tekstPitanja': 'Koja je najveća država na svijetu po površini', 
      'odgovor': [{ 'text': 'Kanada', 'score':0},{ 'text': 'SAD', 'score':0},{ 'text': 'Rusija', 'score':1}]
      },
        {'tekstPitanja': 'Koji je najveći kontinent na svijetu', 
      'odgovor': [{ 'text': 'Afrika', 'score':0},{ 'text': 'Azija', 'score':1},{ 'text': 'Sjeverna Amerika', 'score':0}]
      },
       {'tekstPitanja': 'Koje godine je objavljen roman "Gospodar prstenova" od J.R.R. Tolkiena?',
        'odgovor': [{'text': '1948', 'score':0}, {'text': '1954', 'score':1}, {'text': '1962', 'score':0}]
      },
      {'tekstPitanja': 'Koja je najveća pustinja u svijetu?',
      'odgovor': [{'text': 'Sahara', 'score':0}, {'text': 'Gobi', 'score':0}, {'text': 'Antarktik', 'score':1}]
      },
      {'tekstPitanja': 'Koje je najduže rijeka u Africi?',
      'odgovor': [{'text': 'Kongo', 'score':0}, {'text': 'Nil', 'score':1}, {'text': 'Niger', 'score':0}]
     },
      {'tekstPitanja': 'Ko je glavni lik u romanu "Rat i mir" od Lava Tolstoja?',
      'odgovor': [{'text': 'Ivan Denisovič', 'score':0}, {'text': 'Natasha Rostova', 'score':0}, {'text': 'Pierre Bezukhov', 'score':1}]
    },
      {'tekstPitanja': 'Ko je osnovao kompaniju Apple?',
      'odgovor': [{'text': 'Bill Gates', 'score':0}, {'text': 'Steve Jobs', 'score':1}, {'text': 'Mark Zuckerberg', 'score':0}]
    },
    {'tekstPitanja': 'Koje je najveće ostrvo na svijetu?',
    'odgovor': [{'text': 'Madagaskar', 'score':0}, {'text': 'Australija', 'score':0}, {'text': 'Grönland', 'score':1}]
    },
    {'tekstPitanja': 'Koje godine je objavljen album "Thriller" od Michael Jacksona?',
    'odgovor': [{'text': '1980', 'score':0}, {'text': '1982', 'score':1}, {'text': '1984', 'score':0}]
    },
        
    ];
    
  var _redniBrojPitanja = 0;
  var _totalScore=0;

void _restartQuiz(){
  setState(() {
    _redniBrojPitanja=0;
  _totalScore=0;
  });
  
}

  void _odgovorNaPitanje(int score) {

_totalScore=_totalScore+score;
 setState(() {
      _redniBrojPitanja = _redniBrojPitanja + 1;
    });
  
    if(_redniBrojPitanja < _question.length){
      print("Sledece pitanje");
    }
    else{
      print("Nema vise pitanja");
    };

    print(_redniBrojPitanja);
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Applikacija'),
        ),
        body: _redniBrojPitanja < _question.length 
        ? Quiz(
          odgovorNaPitanje: _odgovorNaPitanje, 
          redniBrojPitanja: _redniBrojPitanja, 
          question: _question, )

        : Rezultat(_totalScore, _restartQuiz),
      ),
    );
  }
}
