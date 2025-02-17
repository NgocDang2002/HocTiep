import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  // ProductPage({required this.name});
  // final String name; // Dùng để nhận tên hoặc dữ liệu khác từ trang trước
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.red,
          // title: ,

          // Container(
          //   width: double.infinity,
          //   height: 30,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'Quản lý hàng hóa',
          //         style: TextStyle(color: Colors.white),
          //       ),
          //       Icon(
          //         Icons.more_vert,
          //         color: Colors.white,
          //       ),
          //     ],
          //   ),
          // ),
          ),
      body: Center(
        child: Text("Hello, đây là trang"),
      ),
    );
  }
}
