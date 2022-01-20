import 'package:flutter/material.dart';

class ButtonStatus extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const ButtonStatus({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor),
            SizedBox(width: 8.0),
            Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
