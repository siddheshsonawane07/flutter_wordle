import 'package:flutter/material.dart';
import 'package:wordle/core/presentation/home/widget/web/grid_web.dart';
import 'package:wordle/core/presentation/home/widget/web/keyboard_web.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Column(
        children: const [
          GridWeb(),
          Spacer(flex: 1),
          KeyboardWeb(),
          Spacer(flex: 1),
          //Text("Web Screen Layout")
        ],
      ),
    );
  }
}
