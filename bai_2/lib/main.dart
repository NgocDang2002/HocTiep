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

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Đây là một đoạn văn mẫu tầm 100 chữ: Cuộc sống là một hành trình đầy màu sắc, nơi mỗi ngày đều mang đến những cơ hội mới để học hỏi và trưởng thành. Dù bạn đối mặt với khó khăn hay tận hưởng niềm vui, hãy luôn giữ vững niềm tin vào bản thân. Mỗi thử thách là một cơ hội để khám phá giới hạn và vượt qua chính mình. Hãy dành thời gian để trân trọng những điều nhỏ bé xung quanh: nụ cười, ánh nắng ban mai, hay một lời động viên chân thành. Chính những điều giản dị này sẽ giúp cuộc sống trở nên ý nghĩa hơn.',
      textDirection: TextDirection.ltr, // Viết từ phải qua trái
      textAlign: TextAlign.left, // căn lề
      maxLines: 3, // chính số dòng muốn hiển thị
      overflow: TextOverflow
          .ellipsis, // Giúp thông báo cho người dùng còn văn bản đằng sau là ...
      // overflow: TextOverflow.fade // làm mờ dòng cuối cùng
      // overflow: TextOverflow.visible // hiển thị tràn ra ngoài khung chứa
      textScaleFactor: 1.5, // Chữ to lên
    );
  }
}
