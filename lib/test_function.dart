import 'dart:math';

String roll() {
  var rng = Random();
  int rolledNum = rng.nextInt(6) + 1; // Add 1 to include numbers from 1 to 6
  return rolledNum.toString();
}

void main() {
  print(roll());
}