void main(List<String> arguments) {
  Map<String, String> dictionary;
  dictionary = {
    'Onion': 'Bawang bombay',
    'Apple': 'Apel',
    'Tomatto': 'tomat',
    'Chair': 'Kursi',
    'Whiteboard': 'Papan Tulis'
  };
  print(dictionary['Onion']); //NOTE - print value based on key

  print("\n===========\n");

  print(dictionary.keys); //NOTE - print all the keys
  print(dictionary.values); // NOTE - print all the values

  print("\n===========\n");

  //NOTE - Print all the keys as list
  for (int i = 0; i < dictionary.length; i++) {
    print(dictionary.keys.elementAt(i));
  }

  print("\n===========\n");

  //NOTE - Print all the values as list
  for (int i = 0; i < dictionary.length; i++) {
    print(dictionary.values.elementAt(i));
  }

  print("\n===========\n");

  //NOTE - print all keys and values as llist
  for (int i = 0; i < dictionary.length; i++) {
    print(dictionary.entries.elementAt(i));
  }
  print("\n");

  dictionary.forEach((key, value) {
    print('$key : $value');
  });

  print("\n===========\n");

  //NOTE - Add entries to Map
  Map<String, String> dictionary2 = {
    'Lamp': 'Lampu',
    'Eraser': 'Penghapus',
    'Bag': 'Tas',
    'Big': 'Besar'
  };

  dictionary.putIfAbsent('Glass', () => "kaca");
  dictionary.forEach((key, value) {
    print('$key : $value');
  });
  print("\n===========\n");
  

  //NOTE - update data from Map
  dictionary.update(
    'Chilli',
    (value) => 'new $value',
    ifAbsent: () => 'Cabe',
  );
  dictionary.forEach((key, value) {
    print('$key : $value');
  }); // add data if the key is not in the Map

  print("\n===========\n");

  dictionary.updateAll(
      (key, value) => key.contains('C') ? 'this key contains C' : value);
  dictionary.forEach((key, value) {
    print('$key : $value');
  });

  print("\n===========\n");

  //NOTE - Delete data from Map
  dictionary.remove('Chair');
  dictionary.forEach((key, value) {
    print('$key : $value');
  });

  print("\n===========\n");

  dictionary.removeWhere((key, value) => key.contains('C'));
  dictionary.forEach((key, value) {
    print('$key : $value');
  });

  print(dictionary.containsKey('Glass'));
  print(dictionary.containsValue('Apel'));

  print("\n===========\n");

  //ANCHOR - Mapping

  //NOTE - Mapping List
  List<String> name = ['Marsha', 'Shani', 'Azizi', 'Christy', 'Gita', 'Lulu'];
  List<String> initialName =
      name.map((name) => name.substring(0, 3).toUpperCase()).toList();
  for (String name in initialName) {
    print(name);
  }

  List<int> nameLength = name.map((name) => name.length).toList();
  for (int name in nameLength) {
    print(name);
  }
  print("\n===========\n");

  //NOTE - Mapping Map
  Map<int, String> days = {
    1: 'Monday',
    2: 'Tuesday',
    3: 'Wednesday',
    4: 'Thursday',
    5: 'Friday',
    6: 'Saturday',
    7: 'Sunday'
  };

  Map<int, String> shortenedDays = days
      .map((key, value) => MapEntry(key, value.substring(0, 3).toUpperCase()));
  print(shortenedDays);
  print(shortenedDays);
}
