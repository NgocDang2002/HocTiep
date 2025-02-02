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
    return Container(
      color: Colors.blue,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // bo tròn
        ),
        // chia bố cục của code
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 40,
                color: Colors.red,
              ),
              const SizedBox(width: 10),
              Expanded(
                // căn theo chiều ngang
                child: Column(
                  mainAxisSize: MainAxisSize.min, // co giãn theo chiều dọc
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // căn theo chiều ngang về bên trái
                  children: const [
                    Text(
                      'Nguyên Văn A',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Hoàng Mai, Hà Nội',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.green,
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisSize:
                    MainAxisSize.min, // co giãn theo chiều dọc ngắn nhất
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: Colors.red,
                  ),
                  Text('20')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
