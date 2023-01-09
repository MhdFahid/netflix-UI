import 'package:flutter/material.dart';
import 'package:netflix/presentation/pages/home/widget/main_card.dart';

import '../../../widget/title.dart';

class MainWidgetCard extends StatelessWidget {
  const MainWidgetCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(
          title: title,
        ),
        LimitedBox(
          maxHeight: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              20,
              (index) => Mainccard(),
            ),
          ),
        )
      ],
    );
  }
}
