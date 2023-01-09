import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/responsive.dart';

class SearchTitle extends StatelessWidget {
  const SearchTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        title,
        style: GoogleFonts.acme(
            fontWeight: FontWeight.w400, fontSize: AppLayout.getHeight(15)),
      ),
    );
  }
}
