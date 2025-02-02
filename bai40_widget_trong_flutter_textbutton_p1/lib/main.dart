import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: MyWidget(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.pink,
      margin: EdgeInsets.all(20),
      child: Padding(
        // padding: EdgeInsets.all(8.0), // các tất cả các phía
        // padding: EdgeInsets.fromLTRB(40, 20, 40, 20), // tùy chỉnh các hướng
        // padding: EdgeInsets.only(right: 40, top: 10),// tùy chỉnh 1 hướng duy nhất
        // tùy chỉnh theo dọc (vertical) hoặc ngang(horizontal)
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Text(
          'Đăng',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
