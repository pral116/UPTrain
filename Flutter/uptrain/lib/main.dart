import 'package:flutter/material.dart';
import 'package:uptrain/screens/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UpTrain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigationBars(),
      debugShowCheckedModeBanner: false,
    );
  }
}