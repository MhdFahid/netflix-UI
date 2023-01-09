import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/pages/search/widgets/title.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTitle(title: 'movies and tv'),
          kheight,
          Expanded(
            child: GridView.count(
              // shrinkWrap: true,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.4,
              children: List.generate(20, (index) => const MainCard()),
            ),
          )
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
            image: AssetImage('images/image1.png'), fit: BoxFit.cover),
      ),
    );
  }
}
