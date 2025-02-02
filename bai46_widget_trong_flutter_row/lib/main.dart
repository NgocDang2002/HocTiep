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
      color: Colors.orange,
      child: Row(
        // mainAxisSize: MainAxisSize
        //     .min, // min: chieu dai cua row la chieu dai cua cac child
        mainAxisSize:
            MainAxisSize.max, // max: chieu dai cua row bao phủ hết màn hình
        // mainAxisAlignment: MainAxisAlignment.start, // căn bên trái
        // mainAxisAlignment: MainAxisAlignment.end, // căn bên phải
        // mainAxisAlignment: MainAxisAlignment.center, // căn giữa
        // mainAxisAlignment: MainAxisAlignment
        //     .spaceBetween, // cách đều các child nhưng không cách đều 2 bên lề
        // mainAxisAlignment: MainAxisAlignment
        //     .spaceEvenly, // cách đều các child và cách đều 2 bên lề
        mainAxisAlignment: MainAxisAlignment
            .spaceAround, // cách đều các child và cách đều nhau theo từng khoảng khách nhau
        // crossAxisAlignment:
        //     CrossAxisAlignment.start, // căn theo chiều dọc của row căn bên trên
        // crossAxisAlignment:
        //     CrossAxisAlignment.end, // căn theo chiều dọc của row căn bên dưới
        crossAxisAlignment:
            CrossAxisAlignment.center, // căn theo chiều dọc của row căn giữa
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Button 1',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'Button 2',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Button 3',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
