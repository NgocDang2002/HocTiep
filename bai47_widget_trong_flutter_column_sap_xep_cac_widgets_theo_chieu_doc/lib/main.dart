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
    //Column hiển thị các widget theo chiều dọc
    return Container(
      color: Colors.green,
      child: Column(
        // mainAxisSize: MainAxisSize.min, // bao quang content của column
        mainAxisSize: MainAxisSize.max, // hiển thị toàn bộ màn hình
        // mainAxisAlignment:
        //     MainAxisAlignment.start, // căn chỉnh theo chiều dọc phía bên trên
        // mainAxisAlignment:
        //     MainAxisAlignment.end, // căn chỉnh theo chiều dọc phía bên dưới
        // mainAxisAlignment:
        //     MainAxisAlignment.center, // căn chỉnh theo chiều dọc giữa
        // mainAxisAlignment: MainAxisAlignment
        //     .spaceBetween, // căn chỉnh theo chiều dọc đều nhau và không căn các mép trên dưới
        // mainAxisAlignment: MainAxisAlignment
        //     .spaceEvenly, // căn chỉnh theo chiều dọc đều nhau và căn các mép trên dưới
        mainAxisAlignment: MainAxisAlignment
            .spaceAround, // căn chỉnh theo chiều dọc, cách đều nhau theo các khối và căn các mép trên dưới
        // crossAxisAlignment:
        //     CrossAxisAlignment.start, // căn trái theo chiều ngang
        // crossAxisAlignment:
        //     CrossAxisAlignment.end, // căn phải theo chiều ngang
        crossAxisAlignment:
            CrossAxisAlignment.center, // căn giữa theo chiều ngang   
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
            ),
            child: Text(
              'button 1',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'button 2',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
            ),
            child: Text(
              'button 3',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
