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

// text
// color
// Khi khong/co child
// size: width, height
// alignment: alignment, AlignmentDirectional, FractionalOffset
//  margin, padding
// decoration: color, shape, border, borderRadius, boxShadow, gradient, image
// transform: xoay container

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // chỉ hiển thị trong SizedBox không hiển thị được đầy đủ nội dùng
    return Center(
      child: SizedBox(
        // width: 300,
        height: 200,
        // width: double.infinity, // chiều rộng kín màn hình
        // height: double.infinity, // chiều cao kín màn hình
        // child: ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.red, //màu nền
        //     foregroundColor: Colors.white, //màu chữ
        //   ),
        //   child: const Text(
        //     'Trương ngọc đăng',
        //     style: TextStyle(fontSize: 30),
        //   ),
        // ),
      ),
    );
  }
}
