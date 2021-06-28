import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  String number;

  Buttons({Key key, this.number}) : super(key: key);
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Buttons> {
  final ccolor=Color(0xffffffff);
  @override
  Widget build(BuildContext context) {
    return
         Container(
            height: 80,
            width: 80,
            child: Center(
              child: Text(
                widget.number,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            decoration:BoxDecoration(
              color: ccolor,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
        );
  }
}
