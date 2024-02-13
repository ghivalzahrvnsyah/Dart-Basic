void main(List<String> arguments) {
  //! Record = anonymous type data.
  (String name, int age) personData = ('Marsha', 18);
  print(personData.$1);
  print(personData.$2);

  ({String name, int age}) personData2 = (name: 'Marsha', age: 18);
  print(personData2.name);
  print(personData2.age);

  print("\n");
  (int id, String address, {String name, int age}) personData3 =
      (1, 'Jakarta', name: 'Marsha', age: 18);
  print(personData3.$1);
  print(personData3.$2);
  print(personData3.name);
  print(personData3.age);

  print("\n============\n");

//NOTE - Record as Parameter
  ({int height, int width}) rectangle = (height: 20, width: 20);

  print(rectangleArea(rectangle));

  print(rectangleAreaAndCircumference(rectangle));
}

int rectangleArea(({int height, int width}) rectangle) {
  return rectangle.height * rectangle.width;
}

({int area, int circumference}) rectangleAreaAndCircumference(
    ({int width, int height}) rectangle) {
  return (
    area: rectangle.width * rectangle.height,
    circumference: 2 * (rectangle.width + rectangle.height)
  );
}
