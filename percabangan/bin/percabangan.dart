import 'dart:io';

void main(List<String> arguments) {
//ANCHOR - if statement
  String input = stdin.readLineSync() ?? 'no input';

  int number = int.tryParse(input) ?? 1;
  // if (number >=0 ) {
  //   print("no input");
  // } else {
  //   print("input is $input");
  // }

  String result = number >= 0 ? '$number is possitive' : "$number is negative";
  print(input);
  print("result is $result");

  //ANCHOR - Switch Statement & Expression

  // Switch Statement
  switch (number) {
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    default:
      print('others');
  }

  // Switch Expression
  String output;
  output = switch (number) {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    _ => 'others'
  };
  print(output);
 
}
