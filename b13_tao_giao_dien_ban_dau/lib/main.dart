import 'dart:math';

import 'package:b13_tao_giao_dien_ban_dau/modal/items.dart';
import 'package:b13_tao_giao_dien_ban_dau/widget/card_modal_bottom.dart';
import 'package:flutter/material.dart';

import 'widget/card_body_widget.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [];

  void _handleAddTask(String name) {
    final newItem = DataItems(id: DateTime.now().toString(), name: name);

    setState(() {
      items.add(newItem);
    });
  }

  // thao tác delete
  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('context');
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'ToDoLisst',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: items
                .map((item) => CardBody(
                      index: items.indexOf(item),
                      item: item,
                      handleDelete: _handleDeleteTask,
                    ))
                .toList(),
          ),
        ),
      ),
      // Ấn vào để hiển thị ra cái imput điền thông tin
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Hiển thị lên 1 thanh từ dưới lên
          showModalBottomSheet(
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ), // shape lại hing dang cho mode
            isScrollControlled:
                true, // hiển tthi hết các phần điển thông tin khi có bàn phím
            context: context,
            builder: (BuildContext context) {
              return ModalBottom(addTask: _handleAddTask);
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
