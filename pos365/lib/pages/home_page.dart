import 'package:flutter/material.dart';
import 'package:pos365/components/custom_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                String notification = 'Đây là menu';
                final snackBar = SnackBar(
                  content: Text(notification),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Icon(
                Icons.menu,
                color: Colors.yellow,
              ),
            ),
            Text(
              'ToDo App',
              style: TextStyle(color: Colors.red),
            ),
            const Icon(
              Icons.menu,
              color: Colors.transparent,
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                    ),
                  ),
                  CustomTextField(
                    controller: usernameController,
                    hintText: 'Username',
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            bottom: 10,
            left: 10,
            child: Text(
              'Privious',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Positioned.fill(
            bottom: 10,
            left: 10,
            child: Text(
              'Next',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
