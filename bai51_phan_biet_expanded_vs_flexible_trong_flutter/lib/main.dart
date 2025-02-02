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

/* Expanded vs Flexible
 - Expanded: lấp đầy các khoảng trống có sẵn
 - Flexible: co giãn theo tỉ lệ
*/
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.loose, // co giãn theo tỉ lệ
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
