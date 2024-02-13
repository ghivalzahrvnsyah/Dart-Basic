import 'dart:io';
void main(List<String> arguments) {

  // stdout.write('What is your name: ');
  String? input; // nullable variable 
  input = stdin.readLineSync(); // Read user input

 
  print(input);
}
