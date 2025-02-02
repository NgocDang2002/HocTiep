import 'dart:math';

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
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: const [
              SizedBox(
                width: 80,
                child: Text(
                  'Username:',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Text(
                'Nguyễn Văm A',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              SizedBox(
                width: 80,
                child: Text(
                  'Email:',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Text(
                'abc@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              SizedBox(
                width: 80,
                child: Text(
                  'Address:',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Text(
                'Hoàng Mai, Hà Nội',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
