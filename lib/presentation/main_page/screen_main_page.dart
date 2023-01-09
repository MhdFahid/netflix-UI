import 'package:flutter/material.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/pages/download/screen_download_page.dart';
import 'package:netflix/presentation/pages/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/pages/home/screen_home.dart';
import 'package:netflix/presentation/pages/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/pages/search/screen_search_page.dart';

final _pages = [
  const ScreenHomePage(),
  const ScreenNewAndHotPage(),
  const ScreenFastAndLaughPage(),
  const ScreenSearchPage(),
  const ScreenDownloadPage(),
];

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (BuildContext context, int index, Widget? _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
    //return Scaffold(
    //   body: ValueListenableBuilder(
    //     valueListenable: indexNotifier,
    //     builder: (BuildContext context, int newIndex, Widget? _) {
    //       return ScreenFastAndLaughPage();
    //     },
    //   ),
    //   bottomNavigationBar: const BottomNavBar(),
    // );
  }
}
