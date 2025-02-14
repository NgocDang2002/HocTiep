import 'package:flutter/material.dart';
import 'package:pos365_2/features/auth/data/widget/home.dart';

class Home extends StatelessWidget {
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
            children: [
              home(),
            ],
          ),
        )
        // Center(
        //   child: Text(
        //     'Helo',
        //     style: TextStyle(fontSize: 30),
        //   ),
        // ),
        );
  }
}
