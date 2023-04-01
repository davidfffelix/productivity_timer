// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({
    Key? key,
    required this.onPressed,
    required this.bottomIcon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData? bottomIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        color: Color(0xff5e35b1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: 40,
        color: Colors.white,
        onPressed: onPressed,
        icon: Icon(
          bottomIcon,
        ),
      ),
    );
  }
}
