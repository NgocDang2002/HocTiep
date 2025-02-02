// Constructor trong dart - DART #12 - Beginner | Lập trình Dart
main(List<String> args) {
  var book1 = Book('name', 1500, 'Học dart');
  print(book1.content);
}

class Book {
  var name = '';
  var price = 0;
  var content = '';

// Constructor
// - Cách 1
  Book(name, price, content) {
    this.name = name;
    this.price = price;
    this.content = content;
  }
// Cách 2
  // Book(this.name, this.price, this.content);
}
