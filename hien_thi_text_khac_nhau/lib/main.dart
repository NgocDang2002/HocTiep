import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: MyWidget(),
        ),
      ),
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(text: 'Hello'),
            TextSpan(
                text: 'bold',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextSpan(text: 'world!'),
          ],
        ),
      ),
    );
  }
}
