import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle/cubit/home_cubit.dart';
import 'package:wordle/data/data.dart';
import 'package:wordle/enums/keyboard_keys.dart';

class KeyboardKey extends StatelessWidget {
  const KeyboardKey(
      {Key? key, this.color = Colors.black26, required this.keyboardKey})
      : super(key: key);

  final Color color;
  final KeyboardKeys keyboardKey;

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (_, currentState) {
        if (currentState is KeyboardKeyUpdateState) {
          KeyboardKeyUpdateState state = currentState;
          if (state.key.name == keyboardKey.name) {
            return true;
          }
        }
        return false;
      },
      builder: (context, currentState) {
        final data = DataSingleton();
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            onTap: () {
              homeCubit.setLetter(keyboardKey);
            },
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                    color: data.getKeyColor(keyboardKey),
                    borderRadius: BorderRadius.circular(4.6)),
                child: Center(
                  child: Text(
                    keyboardKey.name.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}