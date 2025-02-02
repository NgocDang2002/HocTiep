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

/* 
- column: dạng cột
- row: dạng hàng
- stack: dạng chồng
- Expanded: co giãn theo chiều ngang hoặc dọc
- Flexible: co giãn theo tỉ lệ
- positioned: xác định vị trí của widget trong stack
- Align: căn chỉnh vị trí của widget
- Center: căn chỉnh vị trí của widget
*/
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.green,
        ),
        Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // bo tròn
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Trương Ngọc Đăng',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'bắt đầu làm việc lại với code flutter bắt đầu làm việc lại với code flutterbắt đầu làm việc lại với code flutterbắt đầu làm việc lại với code flutterbắt đầu làm việc lại với code flutter',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
