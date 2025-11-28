import 'package:flutter/material.dart';
import 'package:test_app/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: Scaffold(),
    );
  }
}
