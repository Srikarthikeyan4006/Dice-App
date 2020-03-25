import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void funroll()
  {

    rnum = Random().nextInt(6)+1;
    lnum = Random().nextInt(6)+1;
  }
  int lnum = 1;
  int rnum = 1;
  @override
  Widget build(BuildContext context) { //yu_angela
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  funroll();
                });

              },
              child: Image.asset('images/dice$lnum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(onPressed: () {
              setState(() {
                funroll();
              });

            },
              child: Image.asset('images/dice$rnum.png'),
            ),
          )
        ],

      ),
    );


  }

}


