import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class TopTenCard extends StatelessWidget {
  const TopTenCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Container(
                width: 100,
                // height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/image2.png'),
                  ),
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            top: 48,
            child: BorderedText(
              strokeWidth: 4,
              strokeColor: const Color.fromARGB(255, 255, 255, 255),
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 110,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
