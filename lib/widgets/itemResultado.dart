import 'package:flutter/material.dart';
import 'quiz.dart';

class ItemResultado extends StatefulWidget {
  final int i;
  Quiz quiz;
  IconButton icone;
  ItemResultado(this.i, this.quiz);
  @override
  _ItemResultadoState createState() => _ItemResultadoState();
}

class _ItemResultadoState extends State<ItemResultado> {
  @override
  Widget build(BuildContext context) {
    widget.icone = IconButton(
      onPressed: () {
        setState(() {
          widget.quiz.index = widget.i;
        });
      },
      icon: Icon(Icons.fiber_manual_record),
      color: Colors.grey,
    );
    return widget.icone;
  }
}
