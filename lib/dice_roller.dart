import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); 

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  //var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;
  //final randomizer = Random();  //you can decalre it outside the class too
  void rollDice(){
    //var diceRoll = Random().nextInt(6) + 1;
    setState((){
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
      //currentDiceRoll = Random().nextInt(6) + 1; //random object is created every time but deleted automatically.
      //still random object creation/deletion are happening here. toavoid it use it in a variable
      //outside rollDice() method for optimization
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    
  }

  @override
  Widget build(context){
    return  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  //activeDiceImage,
                  'assets/images/dice-$currentDiceRoll.png',
                  width:200,),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: rollDice, 
                    style: TextButton.styleFrom(
                      // padding: const EdgeInsets.only(top: 20,),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize:28,
                      ),
                    ),
                    child: const Text('Roll Dice'))
              ],
              );
  }
}