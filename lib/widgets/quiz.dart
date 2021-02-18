import 'package:flutter/material.dart';
import 'pergunta.dart';

class Quiz extends StatefulWidget {
  final List<Pergunta> perguntas;
  int index = 0;
  Quiz({this.perguntas});
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Widget> listaResultado = [];
  @override
  void initState() {
    super.initState();
    /*
    for (var i = 0; i < widget.perguntas.length; i++) {
      listaResultado.add(ItemResultado(i, widget));
    }
    */
    listaResultado = List.filled(
      widget.perguntas.length,
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.fiber_manual_record,
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SafeArea(
          child: Center(
            child: Text(
              //
              //mostra que pergunta o usuário está lendo no momento
              //
              "Pergunta ${widget.index + 1}",
              style: TextStyle(
                color: Colors.grey[100],
                fontSize: 24,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  //
                  //pergunta anterior
                  //
                  icon: Icon(
                    Icons.navigate_before,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      if (widget.index > 0) widget.index--;
                    });
                  }),
              Flexible(
                child: Center(
                  child: Text(
                    widget.perguntas[widget.index].pergunta,
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              IconButton(
                  //
                  //proxima pergunta
                  //
                  icon: Icon(Icons.navigate_next),
                  color: Colors.grey,
                  onPressed: () {
                    setState(() {
                      if (widget.index < widget.perguntas.length - 1)
                        widget.index++;
                    });
                  }),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                setState(() {
                  checkResposta(true, widget.perguntas[widget.index]);
                  if (widget.index < widget.perguntas.length - 1)
                    widget.index++;
                });
              },
              child: Text("Verdade"),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                setState(() {
                  checkResposta(false, widget.perguntas[widget.index]);
                  if (widget.index < widget.perguntas.length - 1)
                    widget.index++;
                });
              },
              child: Text("mentira"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: listaResultado,
            ),
          ),
        )
      ],
    );
  }

  void checkResposta(bool tentativa, Pergunta pergunta) {
    if (tentativa == pergunta.getResposta()) {
      listaResultado[widget.index] = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      listaResultado[widget.index] = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }
}
