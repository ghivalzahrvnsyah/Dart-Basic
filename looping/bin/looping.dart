
import 'dart:io';

void main(List<String> arguments) {
  String? input;
  int? limiter;

  //ANCHOR - For Loop
  // for(int i = 0; i < limiter; i++) {
  //   print("ini perulangan ke-$i");
  // }

  //ANCHOR - Whle Loop
  // while(limiter >= 0) {
  //   input = stdin.readLineSync() ?? '';
  //   limiter = int.tryParse(input)!;
   

  // }
  // print('input terakhir adalah $limiter');

  //ANCHOR - do While Loop 
  int result = 0;
  do {
    input = stdin.readLineSync()??'';
    limiter = int.tryParse(input);
    result += limiter!;
    print('ini limiter $limiter');
    

  }while (limiter != 0);

  print("result adalah $result");

}
