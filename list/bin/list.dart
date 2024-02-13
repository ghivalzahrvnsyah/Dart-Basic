void main(List<String> arguments) {
  List<int> myNumber = [11, 22, 33, 44, 55, 66];

  print(myNumber[2]); // NOTE - print index

  print("\n============\n");

  for (int element in myNumber) {
    // NOTE - print all numbers in index
    print(element);
  }
  print("\n============\n");

  int sum = 0;
  for (int i = 0; i < myNumber.length; i++) {
    // NOTE - addition result of the list
    sum += myNumber[i];
  }
  print("The addition result of the list is $sum");

  print("\n============\n");

  //NOTE - add value to the list
  myNumber.add(77);
  print(myNumber);

  //NOTE - inser value to based on index
  myNumber.insert(4, 46);
  print(myNumber);

  //NOTE - remove value
  myNumber.remove(46);
  print(myNumber);

  print("\n============\n");

  String result = myNumber.contains(33) ? "Number Found" : "Number not Found";
  print(result);

  print("\n============\n");

  //NOTE - create new list from list
  List<int> myNumber2 = myNumber.sublist(2, 6);
  print(myNumber2);
  print("\n============\n");

  //NOTE - checking list with condition
  if (myNumber.every((element) => element % 2 != 0)) {
    print("All the numbers in the list are odd");
  } else {
    print("not every number are odd");
  }
  print("\n============\n");

  //NOTE - Change list to set number (unique number/not redundant)
  List<int> myNumber3 = [12, 45, 45, 12, 34, 6, 4, 10, 67, 5, 6, 10, 11, 11, 12];
  Set<int> uniqueNumber = myNumber3.toSet();

  for(int element2 in uniqueNumber) {
    print(element2);
  }
  
  
  }
