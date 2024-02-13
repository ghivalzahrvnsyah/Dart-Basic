
void main(List<String> arguments) {
   //ANCHOR - Operator
  double number, number2, number3, number4, number5;
  number = 5 + 2;
  number2 = 5 - 2;
  number3 = 5 * 2;
  number4 = 5 / 2;
  number5 = 5 % 2;
  print(number);
  print(number2);
  print(number3);
  print(number4);
  print(number5);

  //ANCHOR - Logical Operator
  int angka1 = 5, angka2 = 2;
  bool result = angka1 >= angka2;
  print(result);

  //ANCHOR - Null Assertion Operator (!)
  String string = '123';
  int? number6 = int.tryParse(string);
  int result2 =  number6! + 2; // number 6 is not null
  print(result2);

  //ANCHOR - If-null Operator (??)
  String str2 = 'asd';
  int? number7 = int.tryParse(str2); // number 7 is null
  int result3 = number7 ?? 0; // if number7 is null, then 0
  print(result3);

  //ANCHOR - If-null assignment Operator (??=)
  String str3 = 'asd';
  int? number8 = int.tryParse(str3); // number 8 is null
  number8 ??= 2 ; // if number8 is null, then 2
  print(number8);


}
