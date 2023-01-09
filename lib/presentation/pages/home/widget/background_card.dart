import 'package:flutter/material.dart';

import 'icon_widget.dart';

class BGCard extends StatelessWidget {
  const BGCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/image1.png'),
            ),
            color: Colors.blue,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const HomeIconMyListInfo(
                icon: Icons.add,
                title: 'My List',
              ),
              _PlayBotton(),
              const HomeIconMyListInfo(
                icon: Icons.info_rounded,
                title: 'Info',
              )
            ],
          ),
        )
      ],
    );
  }
}

TextButton _PlayBotton() {
  return TextButton.icon(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            const Color.fromARGB(125, 255, 255, 255))),
    onPressed: () {},
    icon: const Icon(
      Icons.play_arrow,
      size: 25,
      color: Colors.black,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: Text(
        'Play',
        style: TextStyle(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
