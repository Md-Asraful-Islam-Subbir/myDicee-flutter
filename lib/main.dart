import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
         title: const Center(
            child: Text('My Dicee',
             style: TextStyle(
              backgroundColor: Colors.red,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DiceePage(),
      ),
    )
  );
}
class DiceePage extends StatefulWidget {
  const DiceePage({super.key});

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  //const DiceePage({super.key});
  int leftdicenumber=1;
  int rightdicenumber=1;
  void changeDice(){
setState(() {
         leftdicenumber=Random().nextInt(6)+1;
         rightdicenumber=Random().nextInt(6)+1;
       });
  }
  @override
  Widget build(BuildContext context) {
 
    return Center(
      child: Row(
        children:<Widget> [
Expanded(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: TextButton(
      onPressed: () { 
       // print('Left button got pressed.');
       changeDice();
       },
      child: Image.asset('images/dice$leftdicenumber.png')
      ),
    ),
  ),
  Expanded(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: TextButton(
      onPressed: () { 
        //print('Right button got pressed.');
changeDice();
       },
      child: Image.asset('images/dice$rightdicenumber.png')
      ),
    ),
  ),
        ],
      ),
    );
  }
}


