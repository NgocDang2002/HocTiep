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
// click
// size
// padding
// margin
// shape
// shadow
// border
// icon
// disable

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ElevatedButton.icon(
        onPressed: () {
          print('ElevatedButton clicked');
        },
        style: ElevatedButton.styleFrom(
          // backgroundColor: Colors.green, // màu nền
          // foregroundColor: Colors.white, // màu chữ
          // // minimumSize: const Size(240, 80), // kích thước
          // padding: const EdgeInsets.all(20), // padding
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(50), // bo góc
          // ),
          // elevation: 30, // độ đổ bóng
          // shadowColor: Colors.black.withOpacity(0.5), // màu shadow
          // side: BorderSide(
          //   color: Colors.red,
          //   width: 2,
          // ),
          disabledBackgroundColor: Colors.grey, // màu nền khi disable
          disabledForegroundColor:
              Colors.white.withOpacity(0.8), // màu chữ khi disable
        ),
        icon: const Icon(
          Icons.edit,
          size: 30,
        ),
        label: const Text(
          'ElevatedButton',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
