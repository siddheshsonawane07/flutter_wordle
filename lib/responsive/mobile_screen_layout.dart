import 'package:flutter/material.dart';
import 'package:wordle/core/presentation/home/widget/android/keyboard.dart';
import '../core/presentation/home/widget/android/grid.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

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
          Grid(),
          Spacer(flex: 1),
          Keyboard(),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
