import 'package:flutter/material.dart';
import 'dart:math';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorCode, this.message, {super.key});
  final List<Color> colorCode;
  final String message;

  final activeDiceImage = '6';
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorCode, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DiceRoller(),
        ],
      )
          // Image.asset('assets/images/dice-2.png', width: 200,),

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

String roll() {
  var rng = Random();
  int rolledNum = rng.nextInt(6) + 1; // Add 1 to include numbers from 1 to 6
  return rolledNum.toString();
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage =
      '3'; // Initialize activeDiceImage with a default value

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          activeDiceImage =
              roll(); // Update activeDiceImage with a new rolled value
        });
      },
      child: Image.asset(
        'assets/images/dice-$activeDiceImage.png',
        width: 200,
      ),
    );
  }
}

//  class _DiceRollerState extends State<DiceRoller>{
//     @override
//     Widget build(context) {
//       return
//       TextButton(onPressed: (){var x=roll();}, child: Image.asset(
//             'assets/images/dice-'+roll()+'.png',
//             width: 200,
//           ),);
//     }

//   }