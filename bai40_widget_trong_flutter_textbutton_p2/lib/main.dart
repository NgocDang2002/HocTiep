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
      margin: EdgeInsets.all(20), // margin button
      // // icon button
      // child: TextButton.icon(
      //   // sử lý click button
      //   onPressed: () {
      //     print('click text button');
      //   },
      //   // sử lý màu button
      //   style: TextButton.styleFrom(
      //     foregroundColor: Colors.pink,
      //     backgroundColor: Colors.green,
      //     // minimumSize: Size(200, 80), // kích thước button
      //     padding: EdgeInsets.all(10), // padding button
      //     // bo viền button
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(100),
      //     ), // shape button
      //     elevation: 20, // đổ bóng button
      //     shadowColor: Colors.blue.withOpacity(
      //         1), // màu bóng button,withOpacity xét độ mờ của đổ bóng
      //     side: const BorderSide(
      //         width: 2, color: Colors.deepOrange), // border tạo viền button
      //   ),
      //   icon: const Icon(
      //     Icons.add,
      //     size: 30,
      //   ), // icon button
      //   // sử lý text button
      //   label: Text(
      //     'Text Button',
      //     style: TextStyle(
      //       fontSize: 28,
      //     ),
      //   ),
      // ),
      child: TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          disabledBackgroundColor: Colors.grey, // màu nền button disable
          disabledForegroundColor: Colors.white, // màu text button disable
        ),
        child: const Text(
          'Text button disable',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
