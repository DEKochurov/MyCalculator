import 'package:my_new_calculator/keyboard.dart';
import 'package:my_new_calculator/screen.dart';
import 'package:flutter/material.dart';
import 'package:my_new_calculator/button.dart' as button;
import 'package:my_new_calculator/logic.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage>{

  String userInput = '';
  String result = '';




  void numberInsert (String value ){
    setState(() {
      userInput += value;
    });
  }

  void allClear (dynamic value){
    setState(() {
      userInput = '';
      result = '';
    });
  }
  void backSpace (dynamic value){
    setState(() {
      userInput = userInput.substring(0, userInput.length-1);
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Column(
          children: [
            MyScreen(result, userInput),
            MyKeyBoard(allClear, numberInsert, backSpace)
          ]
      ),
    );
  }
}