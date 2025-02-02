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
    return Container(
      color: Colors.green, // màu nền
      width: 200,
      height: 100,
      // căn chỉnh chữ trong container
      // alignment: Alignment.center, // căn giữa
      // alignment: Alignment.bottomLeft, // căn dưới trái
      // alignment: FractionalOffset(0.75, 0.75), // căn nơ nửng ở giữa
      // alignment: Alignment.centerLeft, // căn giữa trái
      // padding: const EdgeInsets.all(30), // padding
      // margin: const EdgeInsets.all(30), // margin
      // thay đổi hình dạng của container
      // decoration: BoxDecoration(
      //   color: Colors.blue, // màu nền
      //   shape: BoxShape.rectangle, // hình dạng
      //   borderRadius: BorderRadius.all(Radius.circular(20)), // bo tròn
      //   border: Border.all(width: 2, color: Colors.red), // viền container
      // ),
      alignment: Alignment.center, // căn giữa
      transform: Matrix4.rotationZ(0.2), // xoay container
      child: const Text(
        'Đăng',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
