import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

//-----------Type Inference------------------
//var startAlignment = Alignment.topLeft;
//var startAlignment;  //infettype as dynamic startAlignment. here Dart don't know the data type of startAlignment variable
//so declare it likebelow
//Alignment startAlignment;  //we didn't intialize value to startAlignement variable. so use ? like below
//Alignment? startAlignment; // startAlignemnt is of  type Alignment or null.
// will throw error The argument type 'Alignment?' can't be assigned to the parameter type 'AlignmentGeometry'. 
//so declare it like below
// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;


//-------------Compile time (const) and Run time constant(final)
// const - compile time constant
// final startAlignment = getAlignment();  //dynamic value from getAlignment() function so use final instead of const
// const  endAlignment = Alignment.bottomRight;
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;



class GradientContainer extends StatelessWidget{
  //GradientContainer({key}):super(key:key);
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;
 
  @override
  Widget build(context) {
    //startAlignment = Alignment.topLeft;
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:  colors,
              begin:startAlignment,
              end: endAlignment,
              ),
          ),
          child: const Center(
            child: StyledText('Hello World!'),
          ),
        );
  }
}

