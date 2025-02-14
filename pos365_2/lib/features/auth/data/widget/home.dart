import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({
    super.key,
  });

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              Icons.edit,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Danh sách hàng hóa',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
