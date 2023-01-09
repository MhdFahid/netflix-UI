import 'package:flutter/material.dart';

class HomeIconMyListInfo extends StatelessWidget {
  const HomeIconMyListInfo({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    );
  }
}
