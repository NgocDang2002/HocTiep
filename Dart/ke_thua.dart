// Kế thừa trong dart p1 - DART #14 - Beginner | Lập trình Dart
main(List<String> args) {
  var user1 = User('Đăng', 20, 'abc@gmail.com');
  // user1.printInfo();
  user1.printInfo();
}

class Person {
  int age = 0;
  String name = '';
  Person(this.name, this.age);

  printInfo() {
    print('name= $name ==== age=$age');
  }
}

class User extends Person {
  String email = '';
  // super: chỏ đến lớp cha
  User(String name, int age, this.email) : super(name, age);

// Ghi đè lại lớp cha
  @override
  printInfo() {
    super.printInfo();
    print("email= $email");
  }
}
