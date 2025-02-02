import 'dart:math';

void main(List<String> args) {
// Kiểu dữ liệu Number (Dạng số) trong Dart #6 - Beginner | Lập trình Dart
  num number = 10;
  number = 14.63;
  number = -10;
  number = -10.8;

  // integer
  int integer = 10;
  // integer = -10.6;// Error

  // double
  double doubleNumber = 10.6;
  // doubleNumber = 10;
  // print(doubleNumber);

  // Toán tử trong Dart > < >= <= == !=
  // print(doubleNumber == integer); // true

  // Chuyển số nguyên thành số thực và ngược lại
  // print(integer.toDouble());
  // print(doubleNumber.toInt());

  // làm tròn số
  // print(doubleNumber.roundToDouble()); // làm tròn số thực
  // print(doubleNumber.round());

  // - Chuỗi thành số parse()
  // String stringnumber = '10';
  // integer = int.parse(stringnumber);
  // print(integer.runtimeType); // kiểm tra kiểu dữ liệu
  // print(integer);

  // - Hàm romdom

  // int randomInt = Random().nextInt(5); // lấy số ngẫu nhiên từ 0 đến 4
  // print(randomInt);
  // double randomDouble = Random().nextDouble(); // lấy số ngẫu nhiên từ 0 đến 1
  // print(randomDouble);

// - Toán tử trong Dart + - * / %
  // var addition = 10 + 5;
  // print(addition);
}
