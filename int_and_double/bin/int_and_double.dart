
void main(List<String> arguments) {

  //ANCHOR - parsing string to int
  String str = '123';
  int? num = int.tryParse(str);
  print(num);

  //ANCHOR - parsing string to double
  String str2 = '123.45';
  double? num2 = double.tryParse(str2);
  print(num2);

  //ANCHOR - parsing int to string
  int num3 = 123;
  String result = num3.toString();
  print(result);

 //ANCHOR - parsing double to string with fixed decimal points
  double number = 123.45678;
  String result2 = number.toStringAsFixed(2);
  print(result2);

  //ANCHOR - parsing double to string with exponential notation
  double number2 = 123.45678;
  bool negative = number2.isNegative;
print(negative);

//ANCHOR - Pembulatan keatas
int n = number2.ceil(); 
print(n);

//ANCHOR - Pembulatan kebawah
int n2 = number2.floor(); 
print(n2);

//ANCHOR -  Pembulatan ke angka terdekat
int n3 = number2.round();
print(n3);

//ANCHOR - Pembulatan ke angka terdekat dan mengembalikan nilai double 
double n4 = number2.roundToDouble();
print(n4);
}
