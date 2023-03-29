// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomButtonsHomePage extends StatelessWidget {
  const BottomButtonsHomePage({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        color: Color(0xff828A9F),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: 40,
        color: Colors.white,
        onPressed: onPressed,
        icon: const Icon(Icons.restart_alt),
      ),
    );
  }
}
