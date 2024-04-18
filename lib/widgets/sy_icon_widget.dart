import 'package:flutter/material.dart';

class SyIconWidget extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final Function()? onPressed;
  final double? iconSize;
  const SyIconWidget({
    Key? key,
    required this.icon,
    this.iconColor,
    this.onPressed,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: iconColor,
      ),
      iconSize: iconSize,
    );
  }
}
