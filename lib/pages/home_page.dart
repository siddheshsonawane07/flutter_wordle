import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordle/constants/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(TextConstants.gameTitle,
          style: GoogleFonts.mulish(fontSize: 32, fontWeight: FontWeight.w800),
    ),
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    centerTitle: true,
    shadowColor: Colors.transparent,
        )
    );
  }
}
