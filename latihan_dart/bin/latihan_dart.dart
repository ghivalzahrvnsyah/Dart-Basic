
void main(List<String> arguments) {
  //! no. 1

  print("Nomor 1 .....");
  List<int> x1 = [1, 2, 3];

  List x2 = [
    for (int x in x1) {"x: ${x * 2}"}
  ];
  print(x2);

  //! no. 2
  print("\nNomor 2 .....");
  List<String> s1 = ["Satu", "Dua", "Tiga", "Sebelas"];
  List<int> in1 = s1.map((s1) => s1.length).toList();
  print(in1);

  //! no. 3
  print("\nNomor 3 .....");
  List<int> bil = [1, 2, 3, 4, 5, 6, 7];

  List<int> evenNumber = bil.where((bil) => bil % 2 == 0).toList();
  List<int> sqrtNunmber =
      evenNumber.map((evenNumber) => (evenNumber * evenNumber)).toList();

  print(sqrtNunmber);

  //! no. 4
  print("\nNomor 4 .....");
  var x3 = [1, 2, 3];
  var x4 = x3.map((mhs) => mhs == 2 ? -20 : mhs).toList();
  print(x4);

  print("\nNomor 5 ......");
  List<Map<String, dynamic>> pegawai = [
    {"nama": "Budi", "gaji": 5},
    {"nama": "Wati", "gaji": 17},
  ];

  List<Map<String, dynamic>> pajak = [
    {"nama": "Budi", "gaji": "5", "pajak": 0.15},
    {"nama": "Wati", "gaji": "17", "pajak": 0.20},
  ];
}
