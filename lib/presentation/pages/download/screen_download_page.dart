import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix/core/constant.dart';

import 'package:netflix/presentation/widget/app_bar_widget.dart';

import '../../../core/responsive.dart';

class ScreenDownloadPage extends StatelessWidget {
  const ScreenDownloadPage({super.key});
  final _widgwtList = const [
    Section1(),
    Section2(),
    Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    // final imageList = [
    //   "https://www.themoviedb.org/t/p/w300_and_h4AppLayout.getHeight(8)_bestv2/5NpXoAi3nEQkEgLO09nmotPfyNa.jpg",
    //   "https://www.themoviedb.org/t/p/w300_and_h4AppLayout.getHeight(8)_bestv2/5TYgKxYhnhRNNwqnRAKHkgfqi2G.jpg",
    //   "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg",
    // ];

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(AppLayout.getHeight(50), AppLayout.getHeight(50)),
          child: const AppBarWidget(
            title: 'Download',
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(AppLayout.getHeight(20)),
          itemBuilder: (context, index) => _widgwtList[index],
          itemCount: _widgwtList.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: AppLayout.getHeight(20),
            );
          },
        ));
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: AppLayout.getHeight(20), top: AppLayout.getHeight(10)),
          child: Row(
            children: [
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              Icon(
                Icons.settings,
                size: AppLayout.getHeight(30),
              ),
              kwidth,
              Text(
                'Smart Downloads',
                style: TextStyle(
                    fontSize: AppLayout.getHeight(18),
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppLayout.getHeight(20),
        ),
        Text(
          'Introducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: AppLayout.getHeight(20), fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class Section2 extends StatefulWidget {
  const Section2({super.key});

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(AppLayout.getHeight(10)),
          child: Text(
            'We\' download a personalised selecction of \nmovies and shows for you, so there\'s \nalways something to watch on your\n device ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: AppLayout.getHeight(16), color: Colors.grey),
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width * AppLayout.getWidth(.9),
          // color: Colors.white,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 85, 79, 79),
                  radius: size.width * AppLayout.getHeight(0.38),
                ),
              ),
              DwnImageWidgwt(
                angle: AppLayout.getHeight(20),
                hig: AppLayout.getHeight(0.50),
                wid: AppLayout.getWidth(0.4),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(155),
                    bottom: AppLayout.getHeight(10)),
                img:
                    'https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
              ),
              DwnImageWidgwt(
                angle: AppLayout.getHeight(-20),
                hig: AppLayout.getHeight(0.50),
                wid: AppLayout.getWidth(0.4),
                margin: EdgeInsets.only(
                    right: AppLayout.getHeight(155),
                    bottom: AppLayout.getHeight(10)),
                img:
                    'https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
              ),
              DwnImageWidgwt(
                angle: 0,
                hig: AppLayout.getHeight(0.60),
                wid: AppLayout.getWidth(0.4),
                margin: EdgeInsets.only(
                  top: AppLayout.getHeight(25),
                ),
                img:
                    'https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          minWidth: double.infinity,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
          color: kbtColorBlue,
          child: Text(
            'Setup',
            style: TextStyle(
                fontSize: AppLayout.getHeight(20), fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
        SizedBox(
          height: AppLayout.getHeight(10),
        ),
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getHeight(5)),
          color: kbtColorWhite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10)),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: AppLayout.getHeight(20),
                  fontWeight: FontWeight.bold),
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class DwnImageWidgwt extends StatelessWidget {
  const DwnImageWidgwt({
    Key? key,
    required this.wid,
    required this.img,
    required this.hig,
    required this.margin,
    required this.angle,
  }) : super(key: key);
  final double angle;
  final double wid;
  final double hig;
  final String img;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / AppLayout.getHeight(180),
      child: Container(
        margin: margin,
        width: size.width * wid,
        height: size.width * hig,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(img),
          ),
        ),
      ),
    );
  }
}
