// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  int age = 0;
  Person({
    required this.age,
  });

  void logAge() {
    print('My age');
  }
}
