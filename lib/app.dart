import 'package:base_clean_architecture/presentation/main_app.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: F.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainApp());
  }
}
