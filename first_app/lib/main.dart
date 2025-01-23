import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // Bước 4: Sử dụng thành phần để sây dựng giao diện người dùng
    home: SafeArea(
      child: Scaffold(
        body: Center(child: MyWidget2(false)),
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: const Text('Tự học Flutter'),
        // ),
        // body: const Center(
        //   child: Text('Hello Worrld'),
        // ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

// StatelessWidget : Sử dụng khi giao diện hiển thi ko có tương tác với người dùng
class MyWidget extends StatelessWidget {
  final bool loading;

  const MyWidget(this.loading, {super.key});

  @override
  Widget build(BuildContext context) {
    // if (loading) {
    //   return const CircularProgressIndicator();
    // } else {
    //   return Text('State');
    // }
    return loading ? const CircularProgressIndicator() : Text('State');
  }
}

// StatefulWidget : Sử dụng khi giao diện hiển thi có tương tác với người dùng
class MyWidget2 extends StatefulWidget {
  final bool loading;

  const MyWidget2(this.loading, {super.key});

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2> {
  late bool _localLoading;

  @override
  void initState() {
    _localLoading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading
        ? const CircularProgressIndicator()
        : FloatingActionButton(onPressed: onClickButton);
  }

  void onClickButton() {
    setState(() {
      _localLoading = true;
    });
  }
}
