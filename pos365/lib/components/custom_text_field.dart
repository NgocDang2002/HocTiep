import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
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
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: widget.iconData != null ? Icon(widget.iconData) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius),
          ),
        ),
      ),
    );
  }
}
