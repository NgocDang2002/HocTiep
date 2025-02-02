// Class và Object là gì? - DART #11 - Beginner | Lập trình Dart
main(List<String> args) {
  var book1 = Book();
  book1.name = 'Dart Programming';
  book1.price = 100;
  book1.content = 'This is a Dart Programming book';

  print(book1.content);

  var book2 = Book();
  book2.name = 'Flutter Programming';
  book2.price = 200;
  book2.content = 'This is a Flutter Programming book';
}

class Book {
  var name = '';
  var price = 0;
  var content = '';
}
