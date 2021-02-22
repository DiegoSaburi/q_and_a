import 'package:flutter/material.dart';
import 'widgets/pergunta.dart';
import 'widgets/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Quiz(
          perguntas: [
            Pergunta("pergunta?", false),
            Pergunta("Avatar é Hétero?", true),
            Pergunta("Vini é um arrombado?", true),
            Pergunta("Nat tem voz de criança?", true),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Comi o cu de quem ta lendo", true),
            Pergunta("pergunta?", true),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false),
            Pergunta("Tanque de guerra tem buzina?", false)
          ],
        ),
      ),
    );
  }
}
