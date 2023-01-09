import 'package:flutter/material.dart';
import 'package:netflix/presentation/pages/home/widget/top_ten_card.dart';

import '../../../widget/title.dart';

class TopTenWidget extends StatelessWidget {
  const TopTenWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          title: ' Trending In the past',
        ),
        LimitedBox(
          maxHeight: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => TopTenCard(
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}
