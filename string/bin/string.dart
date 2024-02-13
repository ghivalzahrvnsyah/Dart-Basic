void main(List<String> arguments) {
  //ANCHOR - parse int to string
  int number = 10;
  String result = number.toString();
  print(result);

  //ANCHOR - Concatenation
  String result2 = "My number is " + number.toString();
  print(result2);

  //ANCHOR - Runes
  String str = "Hello";
  print(str.runes); // ouotput: (72, 101, 108, 108, 111)

  String str2 = "Hello ${String.fromCharCode(108)}";
  print(str2); // output: Hello l

  //ANCHOR - Uppercase and Lowercase String
  String str3 = "Hello";
  print(str3.toUpperCase()); // output: HELLO
  print(str3.toLowerCase()); // output: hello

  //ANCHOR - Substring
  String str4 = str3.substring(0,3);
  print(str4); // output: Hel

  //ANCHOR - Split
  String str5 = "Hello World";
  List<String> listString = str5.split(' ');
  print(listString); // output: [Hello, World]
  List<String> listString2 = str5.split('');
  print(listString2); // output: [H, e, l, l, o, , W, o, r, l, d]
  
  int length = str5.length;
  print(length); // output: 11

  bool contains = str5.contains('world');
  print(contains); // output: false -> case sensitive

  //ANCHOR - Padleft and Padright
  int number2 = 7;
  String str6 = number2.toString().padLeft(3, '0');
  print(str6); // output: 007
  String str7 = number2.toString().padRight(3, '0');
  print(str7); // output: 700

  //ANCHOR - TrimLeft and TrimRight
  String str8 = "   HelloWorld   ";
  str8 = str8.trimLeft();
  print(str8); // output: HelloWorld
  str8 = str8.trimRight();
  print(str8); // output: HelloWorld

  //ANCHOR - ReplaceAll
  String str9 = "Hello World";
  str9 = str9.replaceAll("World", "Ghivalza");
  print(str9);

  //ANCHOR - String asFixed
  double number3 = 10.123456;
  String str10 = number3.toStringAsFixed(4);
  print(str10);

}
