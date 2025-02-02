void main(List<String> args) {
  // Function trong Dart #8 - Beginner | Lập trình Dart
  // Function là một khối mã có thể được gọi bằng tên
  // Function có thể nhận tham số đầu vào
  // Function có thể trả về giá trị
  // Function có thể không trả về giá trị
  // Function có thể không nhận tham số đầu vào
  // Function có thể nhận tham số mặc định
  // Function có thể nhận tham số tùy chọn

  // num a = 10;
  // num b = 5;
  // print('Tổng là ${addition(a, b)}');

  // say(name1: 'Dart');

  List<String> names = ['Dart', 'Flutter', 'Laravel', 'NodeJS', 'ReactJS'];
  names.forEach(printElement);
}

// cách 1 viết hàm trả về giá trị
// num addition(num a, num b) {
//   return a + b;
// }

// cách 2 viết hàm trả về giá trị
num addition(num a, num b) => a + b;

// cách 1 viết hàm không trả về giá trị
// say({String? name1, String? name2, String? name3}) {
//   print('Hello $name1 + $name2 + $name3');
// }

// cách 2 viết hàm không trả về giá trị
say({String? name1, String? name2, String? name3}) =>
    print('Hello $name1 + $name2 + $name3');

// hàm in ra từng phần tử trong List
void printElement(String element) {
  print(element);
}

/* <datatype> <name> (<params>) {
<body>
return 
}

*/
