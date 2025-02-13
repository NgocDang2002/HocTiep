import 'package:flutter/material.dart';
import 'package:pos365_2/data/models/login.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // bỏ đi debug hiển thị
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final List<Login> login = [
  //   Login(
  //       UserId: UserId,
  //       SessionId: SessionId,
  //       UserName: UserName,
  //       DisplayName: DisplayName,
  //       Roles: Roles,
  //       Permissions: Permissions,
  //       ResponseStatus: ResponseStatus,
  //       ErrorCode: ErrorCode,
  //       Message: Message,
  //       Errors: Errors)
  // ];

  final TextEditingController containerUser = TextEditingController();
  final TextEditingController containerPass = TextEditingController();
  final TextEditingController containerShop = TextEditingController();

  // ham để chuyển đổi qua link đăng nhập
  Future<void> _Dangnhap2() async {
    // Lấy dữ liệu từ TextField và xóa khoảng trắng thừa
    String inputcontainerShop = containerShop.text.trim();
    String inputcontainerUser = containerUser.text.trim();
    String inputcontainerPass = containerPass.text.trim();

    // kiểm tra nếu hàm khong rỗng mới sử lý
    if (inputcontainerShop.isNotEmpty &&
        inputcontainerUser.isNotEmpty &&
        inputcontainerPass.isNotEmpty) {
      // Tạo URL theo đúng định dạng
      // final Uri url = Uri.parse(
      //     'https://$inputcontainerShop.pos365.vn/api/auth/credentials?Username=$inputcontainerUser&Password=$inputcontainerPass&format=json');
      final Uri url = Uri.parse(
          'https://$inputcontainerShop.pos365.vn/api/auth/credentials?Username=$inputcontainerUser&Password=$inputcontainerPass&format=json');
      // print(
      //     'https://$inputcontainerShop.pos365.vn/api/auth/credentials?Username=$inputcontainerUser&Password=$inputcontainerPass');
      // Gửi yêu cầu HTTP GET đến API
      final response = await http.get(url);
       // Kiểm tra nếu mã trạng thái HTTP là 200 (thành công)
      if(response.statusCode == 200){
        // Giải mã dữ liệu JSON từ phản hồi
        final data = json.decode(response.body);
        print("UserId: ${data['UserId']}");
        print("SessionId: ${data['SessionId']}");
        print("UserName: ${data['UserName']}");
      } else {
        // Hiển thị thông báo nếu có lỗi
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Đăng nhập thất bại! Mã lỗi: ${response.statusCode}")),
        );
      }
      // if (await canLaunchUrl(url)) {
      //   // Kiểm tra xem có thể mở đường link hay không
      //   await launchUrl(url,
      //       mode: LaunchMode
      //           .externalApplication); // Mở link trong trình duyệt ngoài
      // } else {
      //   // Hiển thị thông báo nếu không thể mở đường link
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text("Không thể mở đường link!")),
      //   );
      // }
    }
  }

  // cấu trúc web cơ bản
  @override
  Widget build(BuildContext context) {
    // form cấu trúc code cơ bản
    return Scaffold(
      // tiêu đề của mà hình hiển thị
      appBar: AppBar(
        title: Center(
          child: Text('POS365'),
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
                controller: containerUser,
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
                controller: containerPass,
              ),
            ),

            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity, // chiều rộng full
              height: 40,
              child: ElevatedButton(
                onPressed: _Dangnhap2,
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
