import 'package:hakkuflix/colors.dart';
import 'package:hakkuflix/screens/movie_screen.dart';
import 'package:flutter/material.dart';
import 'package:hakkuflix/screens/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hakkuflix',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colours.scaffoldBgColor,
        useMaterial3: true,
      ),
      home: const Navbar(),
    );
  }
}
