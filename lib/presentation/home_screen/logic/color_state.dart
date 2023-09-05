part of 'color_bloc.dart';

/// base class of state for ColorBloc to provide color
@immutable
abstract class ColorState {
  final Color _color;

  /// color value getter
  Color get color {
    return _color;
  }

  /// Constructor, parameter [_color] for declaration specific color
  const ColorState(this._color);
}

/// Implementation class of state for declaration color
class RandomColorState extends ColorState {
  /// Main constructor, parameter [_color] for declaration specific color
  const RandomColorState(super.bgColor);
}
