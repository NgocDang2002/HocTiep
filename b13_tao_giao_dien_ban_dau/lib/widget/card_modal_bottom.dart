import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  ModalBottom({
    super.key,
    required this.addTask,
  });

  final Function addTask;

  // String textValueKey = '';
  TextEditingController controller =
      TextEditingController(); // thay đổi lại giá trị

  void _handleOnclick(BuildContext context) {
    final name = controller.text;
    if (name.isEmpty) {
      return;
    } else {
      addTask(name);
    }

    Navigator.pop(context); // chuyển trang
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets, // đẩy form mode lên trên
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your task',
              ),
            ),
            const SizedBox(
              height: 20,
            ), // ô imput chuyền vào giá trị
            SizedBox(
              width: double.infinity, // full hoảng cách
              height: 50,
              child: ElevatedButton(
                onPressed: () => _handleOnclick(context),
                child: Text(
                  'APP Task',
                ),
              ),
            ), // ô buttom
          ],
        ),
      ),
    );
  }
}
