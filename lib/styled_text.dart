import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  //const StyledText(String text,{super.key}):outputText = text;
  const StyledText(this.text, {super.key});
  final String text;  // we can add final here as we are not chnaging the text value
  @override
  Widget build(context){
    return Text(
      text, 
      style: const TextStyle(
              color: Colors.yellow,
              fontSize: 28,
            ));
  }
}