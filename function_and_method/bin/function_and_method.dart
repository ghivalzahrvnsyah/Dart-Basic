
void main(List<String> arguments) {
  int number1 = 10;
  int number2 = 12;
  int result = add(number1, number2);
  printToScreen(number1, number2, result);

   print('\n======================\n');

  //NOTE -Optional Parameters
  say('John', 'Happy Birthday', ' James', 'Line');
  say('John', 'Happy Birthday', ' James');

  print(hello('Adel'));
  print(hello('Adel', 'Teacher'));

   print('\n======================\n');

  //NOTE - named parameters
  greeting('Clara', 'How Are You', appName: 'Line');
  greeting('Marsha', 'i am good', to: 'Clara');

  print(hai('Matcha'));
  print(hai('Matcha', greets: 'Good Morning'));

   print('\n======================\n');

  //NOTE - Assigning Function to a Variable
  var sum = addNumbers;
  var hasil = sum(10, 48);
  print('The result of sum is $hasil');

  print('\n======================\n');

  //NOTE - Function as an argument
  print("Odd Numbers :");
  showResult(isOddNumber);

  print("Even Numbers : ");
  showResult(isEvenNumber);

  print('\n======================\n');

  //NOTE - Returning a Function as a Function Result
  var resultAdd = calculation('+');
  print(resultAdd(10, 35));

  var resultSubstract = calculation('-');
  print(resultSubstract(35,10));
  
   print('\n======================\n');

   // NOTE - Arrow Syntax jika perintah di dalam function hanya satu baris
   var number1Calculate = 10;
   var number2Calculate = 20;
   var resultNumber = addNumberCalculate(number1Calculate, number2Calculate);
   printResultNumber(resultNumber);
   
   print('\n======================\n');

   //NOTE - Function sebagai first class object
   int Function(int, int ) myFunction = addNumberCalculate; // function spesifik dengan parameter dan return type 2 int 
   printResultNumber(myFunction(10, 20));
}

int add(int number1, int number2) {
  int result = number1 + number2;
  return result;
}

void printToScreen(int number1, int number2, int result) {
  print('The Result of addition from $number1 and $number2 is $result');
}

//ANCHOR - Positional Parameters
void say(String from, String message,
    [String? to, String appName = 'WhatsApp']) {
  print('$from says $message ${to != null ? 'to $to' : ''} via $appName');
}

String hello(String name, [String title = '']) {
  if (title.isEmpty) {
    return 'Hello $name';
  }
  return 'Hello $title $name';
}

//ANCHOR - Named Parameters
void greeting(String from, String message, {String? to, String? appName}) {
  print(
      '$from is greeting $message ${to != null ? 'to $to' : ''} ${appName != null ? 'via $appName' : ''}');
}

String hai(String name, {String greets = ''}) {
  if (greets.isEmpty) {
    {
      return 'Hello $name';
    }
  }
  return 'Hello, $greets $name!';
}

//ANCHOR - Assigning Function to a Variable
int addNumbers(int a, int b) {
  return a + b;
}

// ANCHOR - Function as an argument
bool isOddNumber(int number) {
  return number % 2 != 0;
}

bool isEvenNumber(int number) {
  return number % 2 == 0;
}
void showResult(Function fn) {
  for (int i = 0; i < 10; i++) {
    if (fn(i)) {
      print(i);
    }
  }
}

//ANCHOR - Returning a Function as a Function Result
int addNumber(int a, int b) {
  return a + b;
}
int subsctractNumber(int a, int b) {
  return a - b;
}
Function calculation(String op) {
  if (op == '+'){
    return addNumber;
  }else {
    return subsctractNumber;
  }
}

// ANCHOR - Arrow Syntax
int addNumberCalculate(int n1, int n2) => n1 + n2;

void printResultNumber(int resultNumber) => print('The result is $resultNumber');