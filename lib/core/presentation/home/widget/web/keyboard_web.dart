import 'package:flutter/material.dart';
import 'package:wordle/core/data/enums/keyboard_keys.dart';
import 'package:wordle/core/presentation/home/widget/web/keyboard_key_web.dart';

class KeyboardWeb extends StatelessWidget {
  const KeyboardWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Row(
            children: const [
              Flexible(
                  flex: 1,
                  child: KeyboardKeyWeb(
                    keyboardKey: KeyboardKeys.q,
                  )),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.w)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.e)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.r)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.t)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.y)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.u)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.i)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.o)),
              Flexible(
                  flex: 1, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.p)),
            ],
          ),
          Row(
            children: const [
              Spacer(
                flex: 5,
              ),
              Flexible(
                  flex: 10,
                  child: KeyboardKeyWeb(
                    keyboardKey: KeyboardKeys.a,
                  )),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.s)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.d)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.f)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.g)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.h)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.j)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.k)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.l)),
              Spacer(
                flex: 5,
              ),
            ],
          ),
          Row(
            children: const [
              Flexible(flex: 14, child: EnterKeyboardKeyWeb()),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.z)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.x)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.c)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.v)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.b)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.n)),
              Flexible(
                  flex: 10, child: KeyboardKeyWeb(keyboardKey: KeyboardKeys.m)),
              Flexible(flex: 14, child: BackspaceKeyboardKeyWeb()),
            ],
          ),
        ],
      ),
    );
  }
}
