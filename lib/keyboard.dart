import 'package:my_new_calculator/button.dart';
import 'package:flutter/material.dart';




class MyKeyBoard extends StatelessWidget {



  final Function allClear;
  final Function buttonInsert;
  final Function backSpace;
  final Function showAnswer;

  const MyKeyBoard(this.allClear, this.buttonInsert, this.backSpace, this.showAnswer, {super.key});

  @override
  Widget build(BuildContext context){

    return Expanded(
        flex: 2,
        child:Column(

          children: [Expanded(flex: 1, child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(16, allClear)),
                    Expanded( flex: 1, child: MyButton(15, backSpace)),
                    Expanded( flex: 1, child: MyButton(14, showAnswer)),
                  ],),),
            Expanded(flex: 1,child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(1, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(2, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(3, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(10, buttonInsert)),
                  ],),),
            Expanded(flex:1,child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(4, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(5, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(6, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(11, buttonInsert)),
                  ],),),
            Expanded(flex:1,child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(7, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(8, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(9, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(12, buttonInsert)),
                  ],),),
            Expanded(flex:1,child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(17, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(0, buttonInsert)),
                    Expanded( flex: 1, child:MyButton(13, buttonInsert)),
                  ],)),
          ],
        )
    );
  }

}


