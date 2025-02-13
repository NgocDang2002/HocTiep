import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import package url_launcher để mở đường link

void main() {
  runApp(MyApp()); // Chạy ứng dụng Flutter
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ẩn banner debug
      home: RedirectPage(), // Đặt trang chính là RedirectPage
    );
  }
}

// Tạo một StatefulWidget để có thể thay đổi trạng thái của TextField
class RedirectPage extends StatefulWidget {
  @override
  _RedirectPageState createState() => _RedirectPageState();
}

class _RedirectPageState extends State<RedirectPage> {
  final TextEditingController _controller = TextEditingController();
  // Tạo một controller để lấy dữ liệu nhập từ TextField

  Future<void> _launchURL() async {
    String input = _controller.text
        .trim(); // Lấy dữ liệu từ TextField và xóa khoảng trắng thừa
    if (input.isNotEmpty) {
      // Kiểm tra nếu không rỗng mới xử lý
      final Uri url =
          Uri.parse("https://$input.pos365.vn/"); // Tạo URL theo đúng định dạng
      if (await canLaunchUrl(url)) {
        // Kiểm tra xem có thể mở đường link hay không
        await launchUrl(url,
            mode: LaunchMode
                .externalApplication); // Mở link trong trình duyệt ngoài
      } else {
        // Hiển thị thông báo nếu không thể mở đường link
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Không thể mở đường link!")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Chuyển hướng URL")), // Thanh tiêu đề của ứng dụng
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Thêm padding để bố cục đẹp hơn
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Căn giữa theo chiều dọc
          children: [
            TextField(
              controller: _controller, // Gán controller cho TextField
              decoration: InputDecoration(
                labelText:
                    "Nhập tên miền (VD: tdnn)", // Hiển thị gợi ý nhập dữ liệu
                border: OutlineInputBorder(), // Viền của TextField
              ),
            ),
            SizedBox(height: 20), // Tạo khoảng cách giữa các widget
            ElevatedButton(
              onPressed: _launchURL, // Gọi hàm mở đường link khi nhấn nút
              child: Text("Đi đến trang web"), // Nội dung nút bấm
            ),
          ],
        ),
      ),
    );
  }
}
