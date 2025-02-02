import 'package:flutter/foundation.dart'; // Import thư viện hỗ trợ tính năng như `listEquals`

// Định nghĩa class Song để lưu thông tin về một bài hát
class Song {
  // Constructor có danh sách tham số bắt buộc (required)
  Song({
    required this.id, // ID duy nhất của bài hát
    required this.title, // Tiêu đề bài hát
    required this.album, // Album chứa bài hát
    required this.artist, // Nghệ sĩ thể hiện
    required this.image, // Ảnh bìa album/bài hát
    required this.source, // Đường dẫn file nhạc (URL hoặc local path)
    required this.duration, // Thời lượng bài hát (đơn vị: giây)
    required this.favorite, // Trạng thái yêu thích (true/false)
    required this.counter, // Số lần phát bài hát
    required this.replay, // Số lần phát lại
  });

  // Factory constructor để tạo một đối tượng Song từ JSON (Map<String, dynamic>)
  factory Song.fromJson(Map<String, dynamic> map) {
    return Song(
      id: map['id'], // Lấy giá trị ID từ JSON
      title: map['title'], // Lấy tiêu đề từ JSON
      album: map['album'], // Lấy album từ JSON
      artist: map['artist'], // Lấy nghệ sĩ từ JSON
      image: map['image'], // Lấy ảnh từ JSON
      duration: map['duration'], // Lấy thời lượng từ JSON
      favorite: map['favorite'], // Lấy trạng thái yêu thích từ JSON
      counter: map['counter'], // Lấy số lần phát từ JSON
      replay: map['replay'], // Lấy số lần phát lại từ JSON
      source: '', // Mặc định gán chuỗi rỗng vì JSON không có dữ liệu cho source
    );
  }

  // Các thuộc tính của bài hát
  String id; // ID duy nhất
  String title; // Tiêu đề bài hát
  String album; // Album chứa bài hát
  String artist; // Nghệ sĩ
  String source; // Đường dẫn bài hát (URL/local)
  String image; // Ảnh bài hát
  int duration; // Thời lượng (giây)
  bool favorite; // Có yêu thích không?
  int counter; // Số lần phát
  int replay; // Số lần phát lại

  // Ghi đè toán tử `==` để so sánh hai đối tượng Song dựa trên `id`
  @override
  bool operator ==(Object other) =>
      identical(this,
          other) || // Kiểm tra nếu hai đối tượng có cùng tham chiếu bộ nhớ
      other is Song && // Kiểm tra kiểu dữ liệu
          runtimeType == other.runtimeType && // Kiểm tra cùng kiểu runtime
          id == other.id; // So sánh dựa trên ID

// HashCode chưa được tùy chỉnh, nên vẫn dùng mặc định
}
