import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/core/responsive.dart';
import 'package:netflix/presentation/pages/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Searches',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopItemTile(),
            separatorBuilder: (context, index) => SizedBox(
              height: AppLayout.getHeight(15),
            ),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopItemTile extends StatelessWidget {
  const TopItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: screenwidth * AppLayout.getWidth(0.5),
              height: AppLayout.getHeight(100),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/tab.jpg',
                  ),
                ),
              ),
            ),
            Positioned(
              child: SvgPicture.asset(
                // fit: BoxFit.fill,
                clipBehavior: Clip.hardEdge,
                "images/sdf.svg",
                color: const Color.fromARGB(255, 189, 185, 185),
                width: AppLayout.getWidth(50),
                height: AppLayout.getHeight(50),
                // matchTextDirection: false,
              ),
            )
          ],
        ),
        kwidth,
        const Expanded(
          child: SearchTitle(
            title: 'Movies Namesss',
          ),
        ),
      ],
    );
  }
}
