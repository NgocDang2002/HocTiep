void main(List<String> args) {
  // Kiểu dữ liệu String (Chuỗi) trong Dart #5 - Beginner | Lập trình Dart
  String greeting = 'Hello Đăng';
  String name = "Dart' Min";
  String message = '''       Hello
  Dart          ''';

  // print(message);

  // print(greeting[0]); // in ra 1 kỹ tự trong chuỗi
  // print(greeting.length); // in ra độ dài của chuỗi
  // print(greeting.substring(0, 5)); // in ra chuỗi con từ vị trí 0 đến 5
  // String greeting2 = greeting + ' ' + name + ' ' + message; // nối chuỗi
  // print(greeting2);

  // String newString = 'Hello Dart' 'Hello Flutter'; // nối chuỗi
  // print(newString);

  // String newString = greeting  * 4; // lặp chuỗi
  // print(newString);

  // trim() - xóa khoảng trắng ở đầu và cuối chuỗi
  // String newString = message.trim();
  // print(newString);
  // split() - chuyển chuỗi thành mảng

  List strings = greeting.split(' '); // tách chuỗi thành mảng
  print(strings); // [Hello, Đăng]
}
