void main(List<String> args) {
  // List trong Dart #7 - Beginner | Lập trình Dart
  // List là một tập hợp các phần tử có thể thay đổi được
  // List có thể chứa nhiều kiểu dữ liệu khác nhau
  // List có thể chứa nhiều phần tử giống nhau
  // List có thể chứa nhiều List khác
  // List có thể chứa nhiều Map khác
  // List có thể chứa nhiều Set khác
  // List có thể chứa nhiều Object khác
  // List có thể chứa nhiều Function khác
  // List có thể chứa nhiều Future khác
  // List có thể chứa nhiều Stream
  // List có thể chứa nhiều Iterable

  List<String> names = ['Dart', 'Flutter', 'Laravel', 'NodeJS', 'ReactJS'];

  // - Thêm phần tử vào List
  // names.add('VueJS'); // Thêm vào cuối List
  // names.addAll(['VueJS', 'Angular']); // Thêm nhiều phần tử vào cuối List
  // names.insert(2, 'VueJS'); // Thêm vào vị trí index
  // names.insertAll(
  //     2, ['VueJS', 'Angular']); // Thêm nhiều phần tử vào vị trí index
  // names.remove('Dart'); // Xóa phần tử trong List khi biết giá trị
  // names.removeAt(4); // Xóa phần tử trong List khi biết index
  // names.removeLast(); // Xóa phần tử cuối cùng trong List
  // names.removeRange(1, 3); // Xóa phần tử trong List từ index 1 đến 3
  // names.clear(); // Xóa toàn bộ phần tử trong List

  // + thay thế phần tử trong List
  // names[1] = 'VueJS'; // Thay thế phần tử ở vị trí index
  // names.replaceRange(
  //     1, 3, ['VueJS', 'Angular']); // Thay thế phần tử từ index 1 đến 3

  // print(names);

  // - Duyệt qua từng phần tử trong List

  // names.forEach((element) {
  //   print(element);
  // }); // Duyệt qua từng phần tử trong List mà mình cung cấp mà không trả về giá trị

  var newNames = names.map((e) =>
      e + ' + aaa'); // Duyệt qua từng phần tử trong List và trả về giá trị
  print(newNames);
}
