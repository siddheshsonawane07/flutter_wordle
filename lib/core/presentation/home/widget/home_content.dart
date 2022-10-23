import 'package:flutter/material.dart';
import 'package:wordle/core/presentation/home/widget/keyboard.dart';

import 'grid.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

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
          Spacer(),
          Keyboard(),
          //Spacer(),
        ],
      ),
    );
  }
}
