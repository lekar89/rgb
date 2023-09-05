import 'dart:math';
import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_app/domain/const.dart';

part 'color_event.dart';

part 'color_state.dart';

/// Bloc to handel color changing logic
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  final _random = Random();

  ///  Main constructor that provide initial state and handle events
  ColorBloc() : super(const RandomColorState(Color(Const.defaultColor))) {
    /// handling RandomColorEvent for emitting new state with random color
    on<RandomColorEvent>((event, emit) {
      emit(RandomColorState(_getRandomColor()));
    });
  }

  Color _getRandomColor() {
    return Color.fromRGBO(
      _getRandomInt(),
      _getRandomInt(),
      _getRandomInt(),
      Const.defaultOpacity,
    );
  }

  int _getRandomInt() => _random.nextInt(Const.maxRGBValue);
}
