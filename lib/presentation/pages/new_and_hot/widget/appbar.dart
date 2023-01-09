import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/core/responsive.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text('title',
            style: GoogleFonts.notoSans(
                fontSize: AppLayout.getHeight(25), fontWeight: FontWeight.w900)
            // fontWeight: FontWeight.w900,
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
    );
  }
}
