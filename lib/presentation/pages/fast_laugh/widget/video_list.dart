import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class VideoList extends StatelessWidget {
  const VideoList({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: Color.fromARGB(155, 255, 255, 255),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/image1.png'),
                      ),
                      kheight,
                      kheight,
                      VideoAction(
                        icon: Icons.emoji_emotions,
                        title: 'LoL',
                      ),
                      VideoAction(
                        icon: Icons.add,
                        title: 'My List',
                      ),
                      VideoAction(
                        icon: Icons.share,
                        title: 'Share',
                      ),
                      VideoAction(
                        icon: Icons.play_arrow,
                        title: 'play',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoAction extends StatelessWidget {
  final IconData icon;
  final String title;
  final double? iconSize;
  const VideoAction(
      {super.key, required this.icon, required this.title, this.iconSize = 30});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        Text(title),
        kheight,
        kheight,
      ],
    );
  }
}
