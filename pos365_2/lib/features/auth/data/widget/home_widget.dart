import 'package:flutter/material.dart';
import 'package:pos365_2/features/Products/presentation/pages/product_page.dart';
import 'package:pos365_2/features/auth/data/models/home_models.dart';

class home extends StatefulWidget {
  home({
    super.key,
    required this.datahome,
  });

  var datahome;

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // chuyển qua 1 trang khách
  void _ChuyenTrangProductPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        // builder: (context) => ProductPage(),
        builder: (context) => ProductPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, // Full toàn bộ kích thước
        height: 74,
        margin: EdgeInsets.only(bottom: 20), // Chỉ thêm margin cần điều chỉnh
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 211, 214, 216),
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {
            // Xử lý sự kiện khi nhấn vào Row
            // print("Row được nhấn với hiệu ứng sóng! ${datahome.id}");
            switch (widget.datahome.id) {
              case '1':
                _ChuyenTrangProductPage();
                break;
              case '2':
                break;
              case '3':
                print("Row được nhấn với hiệu ứng sóng! ${widget.datahome.id}");
                break;
              case '4':
                print("Row được nhấn với hiệu ứng sóng! ${widget.datahome.id}");
                break;
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 10),
                Text(
                  widget.datahome.name,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
        )

        // -----------
        // child: Padding(
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        // child: Row(
        //   children: [
        //     Icon(
        //       Icons.edit,
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Text(
        //       datahome.name,
        //       style: TextStyle(
        //         fontSize: 20,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ],
        // ),

        // ),
        );
  }
}
