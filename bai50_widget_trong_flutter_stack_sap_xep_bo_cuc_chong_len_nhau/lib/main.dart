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

// width and height
// fit
// alignment : căn chỉnh các widget con trong Stack
// textDirection : xác định hướng của text
// clipBehavior

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 500,
      height: 500,
      child: Stack(
        alignment: Alignment.center, // căn chỉnh các widget con trong Stack
        // textDirection: TextDirection.ltr, // xác định hướng của text
        // fit: StackFit.expand, // Container trên cùng sẽ hiển thị hết toàn bộ không gian
        fit: StackFit.loose, // Container hiển thị về thông số mặc định
        clipBehavior: Clip
            .none, // xác định cách hiển thị của các widget con chàn ra ngoài khỏi Stack
        children: [
          Container(
            color: Colors.pink,
            width: 300,
            height: 300,
          ),
          // căn chỉnh các widget con trong Stack theo các hướng khách nhau
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 700,
            ),
          ),
          //căn chỉnh các widget con trong Stack theo các hướng nhất định
          Align(
            alignment: Alignment
                .bottomLeft, // căn chỉnh các widget con trong Stack theo các hướng tùy thích
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          Container(
            color: Colors.yellow,
            width: 70,
            height: 70,
          ),
          Container(
            color: Colors.red,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
