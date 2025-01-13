import 'package:my_new_calculator/button.dart';
import 'package:flutter/material.dart';
import 'package:my_new_calculator/homepage.dart';




class MyKeyBoard extends StatelessWidget {



  final Function allClear;
  final Function numberInsert;
  final Function backSpace;

  const MyKeyBoard(this.allClear, this.numberInsert, this.backSpace, {super.key});

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
                    // Expanded( flex: 2, child: MyButton(14, null)),
                  ],),),
            Expanded(flex: 1,child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(1, numberInsert)),
                    Expanded( flex: 1, child:MyButton(2, numberInsert)),
                    Expanded( flex: 1, child:MyButton(3, numberInsert)),
                    // Expanded( flex: 1, child:MyButton(10, null)),
                  ],),),
            Expanded(flex:1,child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(4, numberInsert)),
                    Expanded( flex: 1, child:MyButton(5, numberInsert)),
                    Expanded( flex: 1, child:MyButton(6, numberInsert)),
                    // Expanded( flex: 1, child:MyButton(11, null)),
                  ],),),
            Expanded(flex:1,child:
                Row(
                  children: [
                    Expanded( flex: 1, child:MyButton(7, numberInsert)),
                    Expanded( flex: 1, child:MyButton(8, numberInsert)),
                    Expanded( flex: 1, child:MyButton(9, numberInsert)),
                    // Expanded( flex: 1, child:MyButton(12, null)),
                  ],),),
            Expanded(flex:1,child:
                Row(
                  children: [
                    // Expanded( flex: 1, child:MyButton(17, null)),
                    Expanded( flex: 1, child:MyButton(0, numberInsert)),
                    // Expanded( flex: 1, child:MyButton(18, null)),
                    // Expanded( flex: 1, child:MyButton(13, null)),
                  ],)),
          ],
        )
    );
  }

}


