import 'package:my_new_calculator/keyboard.dart';
import 'package:my_new_calculator/screen.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage>{

  String userInput = '';
  String result = '';




  void buttonInsert (String value ){
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

  void showAnswer(String expression){
    Parser p = Parser();
    Expression exp = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    num eval = exp.evaluate(EvaluationType.REAL, contextModel);
    String answer = eval.toString();
    setState(() {
      userInput = answer;
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
            MyKeyBoard(allClear, buttonInsert, backSpace, showAnswer)
          ]
      ),
    );
  }
}