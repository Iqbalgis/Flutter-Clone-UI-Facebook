import 'package:flutter/material.dart';

class TopBarIcon extends StatelessWidget {
  final IconData icon;
  const TopBarIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Center(child: Icon(icon, color: Colors.black)),
    );
  }
}
