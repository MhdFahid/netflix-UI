import 'package:flutter/material.dart';

import '../../../../core/responsive.dart';

class SearchTitle extends StatelessWidget {
  const SearchTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: AppLayout.getHeight(20)),
      ),
    );
  }
}
