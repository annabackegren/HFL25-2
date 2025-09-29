import 'dart:io';

// import 'package:v01/v01.dart' as v01;

void main() {
  stdout.write('Skriv in ditt första tal: ');
  num firstNumber = int.parse(stdin.readLineSync()!);

  stdout.write('Välj din operator (+ eller -): ');
  var chosenOperator = stdin.readLineSync()!;

  stdout.write('Skriv in ditt andra tal: ');
  num secondNumber = int.parse(stdin.readLineSync()!);

  num result;

  if(chosenOperator == '+'){
    result = firstNumber + secondNumber;
  } else {
    result = firstNumber - secondNumber;
  }
  print('$firstNumber $chosenOperator $secondNumber = $result');
}
