import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // bỏ đi debug hiển thị
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  TextEditingController containerUser = TextEditingController();
  TextEditingController containerPass = TextEditingController();
  TextEditingController containerShop = TextEditingController();

  void _Dangnhap() {
    print('Tên cửa hàng: ' + containerShop.text);
    print('Tên đăng nhập: ' + containerUser.text);
    print('Mật khẩu: ' + containerUser.text);
  }

  // cấu trúc web cơ bản
  @override
  Widget build(BuildContext context) {
    // form cấu trúc code cơ bản
    return Scaffold(
      // tiêu đề của mà hình hiển thị
      appBar: AppBar(
        title: Center(
          child: Text('POS36  '),
        ),
      ),
      // hiển thị body và cho phép cuộn khi màn hình không hiển thị hết
      body: SingleChildScrollView(
        child: Column(
          children: [
            // phần nhập thông tin khách hàng giông nút inpurt
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                /*decoration: Trang trí giao diện (label, icon, border, hint...)
                 InputDecoration: giúp thêm nhãn (labelText) và viền (border).
                 OutlineInputBorder: bo góc đường viên của ô nhập
                */
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tên cửa hàng',
                ),
                controller: containerShop,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                /*decoration: Trang trí giao diện (label, icon, border, hint...)
                 InputDecoration: giúp thêm nhãn (labelText) và viền (border).
                 OutlineInputBorder: bo góc đường viên của ô nhập
                */
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tên đăng nhập',
                ),
                controller: containerPass,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                /*decoration: Trang trí giao diện (label, icon, border, hint...)
                 InputDecoration: giúp thêm nhãn (labelText) và viền (border).
                 OutlineInputBorder: bo góc đường viên của ô nhập
                */
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mật khẩu',
                ),
                controller: containerUser,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity, // chiều rộng full
              height: 40,
              child: ElevatedButton(
                onPressed: _Dangnhap,
                child: Text(
                  'Đăng Nhập',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
