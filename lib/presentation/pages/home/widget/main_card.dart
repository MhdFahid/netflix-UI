import 'package:flutter/material.dart';

Padding Mainccard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 90,
      // height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/image.png'),
        ),
        color: Colors.amber,
      ),
    ),
  );
}
