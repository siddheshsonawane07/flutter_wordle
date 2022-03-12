import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wordle/enums/keyboard_keys.dart';
import 'package:wordle/enums/letter.dart';
import 'package:wordle/enums/message_types.dart';


part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
