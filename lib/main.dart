import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:netflix/presentation/main_page/screen_main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        backgroundColor: Colors.black,
        fontFamily: GoogleFonts.merriweatherSans().fontFamily,
      ),
      darkTheme: ThemeData.dark().copyWith(backgroundColor: Colors.black),
      themeMode: ThemeMode.dark,
      home: const ScreenMainPage(),
    );
  }
}
