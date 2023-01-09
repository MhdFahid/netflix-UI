import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/pages/new_and_hot/widget/icon.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: List.generate(55, (index) => const EveryItem()));
  }
}

class EveryItem extends StatelessWidget {
  const EveryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Friends',
            style: TextStyle(
                letterSpacing: 0,
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence __and her relationship--into a tallspin',
            style: TextStyle(
                letterSpacing: 0,
                color: Color.fromARGB(255, 104, 100, 100),
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('images/tab.jpg'))),
            width: double.infinity,
            height: 200,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            IconsEvy(icon: Icons.share, name: 'Share'),
            kwidth,
            IconsEvy(icon: Icons.add, name: 'My List'),
            kwidth,
            IconsEvy(icon: Icons.play_arrow_rounded, name: 'Play'),
            kwidth
          ],
        )
      ],
    );
  }
}
