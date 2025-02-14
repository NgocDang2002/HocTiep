import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  CardBody({
    super.key,
    required this.item,
    required this.handleDelete,
    required this.index,
  });

  var item;
  var index;
  final Function handleDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: (index % 2 == 0)
            ? Color.fromARGB(255, 32, 137, 218)
            : Color.fromARGB(255, 160, 201, 231),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () async {
                if (await confirm(context)) {
                  handleDelete(item.id);
                } else {
                  return;
                }
              },
              // onTap: () {
              //   handleDelete(item.id);
              // }, // nhấn vào bên trong cái Icon
              child: Icon(
                Icons.delete_outline,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
