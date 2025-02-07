import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final double radius;
  final double? width;
  final double height;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.color = Colors.red,
    this.textColor = Colors.white,
    this.borderColor = Colors.orange,
    this.radius = 10,
    this.width,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
        ),
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: borderColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(radius),
            boxShadow: const [
              BoxShadow(
                color: Colors.blue,
                offset: Offset(5, 5),
                blurRadius: 3,
              ),
            ],
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
