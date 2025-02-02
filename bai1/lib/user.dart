// import 'package:flutter_application_1/people.dart';
// import 'package:flutter_application_1/person.dart';

// class User extends Person {
//   int id = 0;
//   String name = '';
//   User(
//     this.id,
//     this.name,
//   ) : super(age: 18);

//   void logInfor() {
//     print('$id - $name - $age');
//   }
// }
//-------------------- extends chỉ kế thừa được 1 cái-------------------------------
// extends: ko cần ghi đè lại giá trị

// class User extends People {
//   int id = 0;
//   String name = '';
//   User(
//     this.id,
//     this.name,
//   );

//   // void logInfor() {
//   //   // print('$id - $name');
//   // }

//   @override
//   void function1() {
//     // TODO: implement function1
//     print('override function1');
//   } // ghi đè lại lớp chìu tượng

//   // @override
//   // void function2() {
//   //   // TODO: implement function2
//   //   // print('override function2');
//   //   super.function2();// chỏ tới hàm cha ko chìu tượng
//   // }
// }
// --------------------------------------------------
// implements, có thể kế thừ được với nhiều người
// LƯU Ý: Khi dùng dùng lớp chừu tượng abstract thì dùng implements (abstract là lớp chìu tượng nếu muốn kế thừ thì bắt buộc phải ghi đè)

import 'package:bai1/address.dart';
import 'package:bai1/city.dart';

class User implements City, Address {
  int id = 0;
  String name = ' ';
  User(
    this.id,
    this.name,
  );

  @override
  void showCity() {
    print('Dăng city');
  }

  @override
  void function1() {
    print('Dăng city function1');
  }

  @override
  void ShowAddress() {
    // TODO: implement ShowAddress
  }
}
