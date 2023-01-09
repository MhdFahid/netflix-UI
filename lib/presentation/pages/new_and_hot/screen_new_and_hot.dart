import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/core/responsive.dart';
import 'package:netflix/presentation/pages/new_and_hot/widget/comming_soon.dart';
import 'package:netflix/presentation/pages/new_and_hot/widget/everyone_watching.dart';

class ScreenNewAndHotPage extends StatelessWidget {
  const ScreenNewAndHotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              bottom: TabBar(
                  indicatorColor: Colors.white,
                  labelColor: Colors.black,
                  // isScrollable: true,
                  unselectedLabelColor:
                      const Color.fromARGB(255, 231, 226, 226),
                  labelStyle: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                  // labelStyle: de  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tabs: const [
                    Tab(
                      text: '🍿 Comming Soon',
                    ),
                    Tab(
                      text: "😁 Everyone's Watching",
                    ),
                  ]),
              actions: [
                const Icon(Icons.cast),
                kwidth,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    width: AppLayout.getWidth(25),
                    height: AppLayout.getHeight(25),
                  ),
                ),
                kwidth
              ],
              title: Text(
                'New & Hot',
                style: GoogleFonts.notoSans(
                  fontSize: AppLayout.getHeight(20),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              CommingSoon(),
              EveryoneWatching(),
            ],
          ),
        ),
      ),
    );
  }
}
