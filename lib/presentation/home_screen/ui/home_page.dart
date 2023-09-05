import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/home_screen/logic/color_bloc.dart';

/// Home app page
class HomePage extends StatelessWidget {
  ///  Constant Constructor of home page, object cannot be changed.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          context.read<ColorBloc>().add(RandomColorEvent());
        },
        child: BlocBuilder<ColorBloc, ColorState>(
          builder: (context, state) {
            return ColoredBox(
              color: state.color,
              child: const Center(
                child: Text(
                  'Hello there',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
