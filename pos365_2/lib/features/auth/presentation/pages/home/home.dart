import 'package:flutter/material.dart';
import 'package:pos365_2/features/Products/presentation/pages/product_page.dart';
import 'package:pos365_2/features/auth/data/models/home_models.dart';
import 'package:pos365_2/features/auth/data/widget/home_widget.dart';

class Home extends StatelessWidget {
  final List<Datahome> dataHome = [
    Datahome(
      id: '1',
      name: 'Danh sách hàng hóa',
    ),
    Datahome(
      id: '2',
      name: 'Danh sách hóa đơn',
    ),
    Datahome(
      id: '3',
      name: 'Danh sách kiểm kê',
    ),
    Datahome(
      id: '4',
      name: 'Danh sách nhập hàng',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'POS365',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: dataHome
              .map((dataHome) => home(
                    datahome: dataHome,
                  ))
              .toList(), // hiển thị thông tin theo list
        ),
      ),
    );
  }
}
