import 'package:flutter/material.dart';

class IconsEvy extends StatelessWidget {
  const IconsEvy({super.key, required this.icon, required this.name});
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
