part of 'color_bloc.dart';

/// base class of event for ColorBloc  to trigger color changing
@immutable
abstract class ColorEvent {}

/// Implementation class of event for ColorBloc  to trigger color changing
class RandomColorEvent extends ColorEvent {}
