import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? iconData;
  final double radius;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.iconData,
    this.radius = 12,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.green,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              offset: Offset(5, 5),
              blurRadius: 3,
            )
          ]),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: iconData == null
              ? null
              : Icon(
                  iconData,
                  color: Colors.green,
                ),
          prefixIconConstraints: BoxConstraints(minWidth: 50),
        ),
      ),
    );
  }
}
