import 'package:flutter/material.dart';
import 'package:week_13/screens/provider_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProviderScreen());
  }
}
