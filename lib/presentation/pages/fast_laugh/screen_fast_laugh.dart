import 'package:flutter/material.dart';
import 'package:netflix/presentation/pages/fast_laugh/widget/video_list.dart';

class ScreenFastAndLaughPage extends StatelessWidget {
  const ScreenFastAndLaughPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(78, (index) => VideoList(index: index)),
      ),
    ));
  }
}
