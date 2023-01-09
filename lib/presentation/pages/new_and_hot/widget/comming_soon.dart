import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constant.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: List.generate(
        30,
        (index) => CommigSoonnn(size: size),
      ),
    );
  }
}

class CommigSoonnn extends StatelessWidget {
  const CommigSoonnn({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            kheight,
            SizedBox(
              height: 400,
              width: 60,
              // color: Colors.red,
              child: Column(children: const [
                kheight,
                Text(
                  'FEB',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  '11',
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
            SizedBox(
              height: 400,
              width: size.width - 60,
              // color: Color.fromARGB(255, 34, 5, 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/tab1.jpg'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: CircleAvatar(
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
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kwidth,
                      Text('TALL GIRL 2',
                          style: GoogleFonts.akronim(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      kwidth,
                      const Spacer(),
                      const Icon(
                        Icons.add_alert_rounded,
                        size: 30,
                      ),
                      kwidth,
                      const Icon(
                        Icons.info_outline,
                        size: 30,
                      ),
                      kwidth,
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Comming On Friday',
                      style: TextStyle(
                          letterSpacing: -1,
                          color: Color.fromARGB(255, 104, 100, 100),
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text('TALL GIRL 2', style: GoogleFonts.akronim()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence __and her relationship--into a tallspin ',
                      style: TextStyle(
                          letterSpacing: 0,
                          color: Color.fromARGB(255, 104, 100, 100),
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
