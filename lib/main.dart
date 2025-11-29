import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:test_app/my_app.dart' show MyApp;

void main() {
  // Widgets flutter binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Flutter native splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}
