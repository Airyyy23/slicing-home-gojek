import 'package:flutter/material.dart';
import 'package:gojek/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gojek',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
