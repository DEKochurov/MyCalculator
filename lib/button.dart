import 'package:flutter/material.dart';

var buttonsArray = [
      '0', //index 0
      '1', //index 1
      '2', //index 2
      '3', //index 3
      '4', //index 4
      '5', //index 5
      '6', //index 6
      '7', //index 7
      '8', //index 8
      '9', //index 9
          '+', //index 10
          '-', //index 11
          '*', //index 12
          '/', //index 13
          '=', //index 14
          '⌫', //index 15
          'AC', //index 16
          '.',//index 17
];

class MyButton extends StatelessWidget {
  final _index;
  final Function _function;



  const MyButton(this._index, this._function, {super.key});
  @override
  Widget build(BuildContext context){
    return OutlinedButton(
        onPressed: () => _function(buttonsArray[_index]),
        child: Text(buttonsArray[_index],
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )
    );


  }
}



