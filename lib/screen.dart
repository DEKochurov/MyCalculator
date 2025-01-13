import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_new_calculator/keyboard.dart';

class MyScreen extends StatelessWidget{

  final String result;
  final String userInput;

  const MyScreen(this.result, this.userInput, {super.key});

  @override
  Widget build (BuildContext context){
    return Expanded(
        flex: 1,
        child:Container(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(result,
                  style: TextStyle(fontSize: 50),),
                Text(userInput,
                  style: TextStyle(fontSize: 35),),
              ],
            )
        )
    );
  }
}