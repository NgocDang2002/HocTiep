import 'dart:math';

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
      margin: const EdgeInsets.all(10), // khoảng cách các container
      // xăp xếp theo chiều ngang
      child: Row(
        children: [
          Expanded(
            flex: 1, // tỉ lệ của container
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2, // tỉ lệ của container
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1, // tỉ lệ của container
            child: Container(
              color: Colors.orange,
              height: 100,
            ),
          ),
        ],
      ),
      // xắp xếp theo chiều dọc
      // child: Column(
      //   children: [
      //     Expanded(
      //       flex: 1, // tỉ lệ của container
      //       child: Container(
      //         color: Colors.green,
      //         height: 100,
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     Expanded(
      //       flex: 2, // tỉ lệ của container
      //       child: Container(
      //         color: Colors.blue,
      //         height: 100,
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     Expanded(
      //       flex: 1, // tỉ lệ của container
      //       child: Container(
      //         color: Colors.orange,
      //         height: 100,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
