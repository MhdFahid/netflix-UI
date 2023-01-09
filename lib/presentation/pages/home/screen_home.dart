import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/core/responsive.dart';
import 'package:netflix/presentation/pages/home/widget/background_card.dart';

import 'package:netflix/presentation/pages/home/widget/main_widget_cards.dart';
import 'package:netflix/presentation/pages/home/widget/top_ten_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: ((notification) {
              final ScrollDirection direction = notification.direction;
              // print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            }),
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BGCard(),
                    MainWidgetCard(
                      title: 'Release In the past',
                    ),
                    MainWidgetCard(
                      title: 'Release In the past',
                    ),
                    TopTenWidget(title: "Top Movies And Tv's"),
                    MainWidgetCard(
                      title: 'Release In the past',
                    ),
                  ],
                ),
                scrollNotifier.value == true
                    ? Container(
                        width: double.maxFinite,
                        height: 75,
                        color: const Color.fromARGB(255, 34, 32, 32),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                AnimatedContainer(
                                  margin: const EdgeInsets.all(8),
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      // color: Colors.amberAccent,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'images/netflix.png',
                                          ))),
                                  duration:
                                      const Duration(milliseconds: 1000000),
                                ),
                                const Spacer(),
                                const Icon(Icons.cast),
                                kwidth,
                                Container(
                                  color: Colors.red,
                                  width: AppLayout.getWidth(25),
                                  height: AppLayout.getHeight(25),
                                ),
                                kwidth
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'TV Shows',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'Movies',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'Categories',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : kheight
              ],
            ),
          );
        },
      ),
    );
  }
}
