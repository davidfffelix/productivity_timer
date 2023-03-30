import 'package:flutter/material.dart';

class ProductivityButton extends StatelessWidget {
  const ProductivityButton({
    super.key,
    required this.text,
    required this.size,
    required this.onPressed,
  });

  final String text;
  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            return const Color(0xff5e35b1);
          },
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
