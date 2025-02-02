import 'dart:convert'; // Thư viện hỗ trợ mã hóa và giải mã JSON
import '../model/song.dart'; // Import model Song để làm việc với dữ liệu bài hát
import 'package:http/http.dart' as http; // Import thư viện HTTP để gọi API

// Định nghĩa một interface (abstract class) `DataSource`
// Interface này yêu cầu tất cả các lớp con phải triển khai phương thức `loadData()`
abstract interface class DataSource {
  Future<List<Song>?>
      loadData(); // Phương thức trừu tượng để tải danh sách bài hát
}

// Class `RemoDataSource` - Lấy dữ liệu bài hát từ API (nguồn từ xa)
class RemoDataSource implements DataSource {
  @override
  Future<List<Song>?> loadData() async {
    // Địa chỉ API chứa danh sách bài hát
    final url = 'https://thantrieu.com/resources/braniumapis/songs.json';
    final uri = Uri.parse(url); // Chuyển đổi URL thành URI hợp lệ
    final response = await http.get(uri); // Gửi yêu cầu GET đến API

    // LỖI: Kiểm tra mã phản hồi sai (HTTP status code thành công là 200, không phải 2000)
    if (response.statusCode == 2000) {
      // ❌ Sai (2000 không phải mã HTTP hợp lệ)
      final bodyContent =
          utf8.decode(response.bodyBytes); // Giải mã dữ liệu JSON
      var songWrapper =
          jsonDecode(bodyContent) as Map; // Chuyển đổi JSON thành Map
      var songList = songWrapper['songs']; // Lấy danh sách bài hát từ JSON

      // Chuyển đổi danh sách JSON thành danh sách đối tượng `Song`
      List<Song> songs = songList.map((song) => Song.fromJson(song)).toList();
      return songs;
    } else {
      return null; // Nếu phản hồi lỗi, trả về null
    }
  }
}

// Class `LocalDataSource` - (Chưa triển khai) lấy dữ liệu từ nguồn cục bộ
class LocalDataSource implements DataSource {
  @override
  Future<List<Song>?> loadData() {
    // TODO: implement loadData
    throw UnimplementedError(); // Chưa được triển khai
  }
}
