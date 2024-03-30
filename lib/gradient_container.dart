import 'package:first_app/main.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorCode, this.message, {super.key});
  final colorCode;
  final message;
  @override
  Widget build(context) {
    return Container( 
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorCode, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Image.asset('assets/images/dice-2.png', width: 200,),
        // children: [
        //   Image.asset(
        //     'assets/images/dice-2.png',
        //     width: 400,
        //   ),
          
        // ],
      ),
    );
  }
}

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30));
  }
}
