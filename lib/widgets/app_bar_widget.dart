import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    required this.leading,
    required this.title,
    required this.actions,
  }) : super(key: key);

  final Widget leading;
  final Widget title;
  final Widget actions;

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight + 30);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        color: const Color(0xff2D2D2D),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading,
              title,
              actions,
            ],
          ),
        ),
      ),
    );
  }
}
