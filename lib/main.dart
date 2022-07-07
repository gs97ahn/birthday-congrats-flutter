import 'package:flutter/material.dart';
import './splash_screen.dart';

void main() {
  runApp(const BirthdayCongratsApp());
}

class BirthdayCongratsApp extends StatelessWidget {
  const BirthdayCongratsApp({Key? key}) : super(key: key);
  final String _title = 'Birthday Congrats';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
