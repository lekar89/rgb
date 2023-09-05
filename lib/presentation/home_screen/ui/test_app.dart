import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/home_screen/logic/color_bloc.dart';

import 'package:test_app/presentation/home_screen/ui/home_page.dart';

/// Main application class
class TestApp extends StatelessWidget {
  ///  Constant Constructor of app, object cannot be changed.
  const TestApp();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocProvider(
        create: (context) => ColorBloc(),
        child: const HomePage(),
      ),
    );
  }
}
