import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hakkuflix/screens/movie_screen.dart';
import 'package:hakkuflix/screens/tv_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [MovieScreen(), const TvScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_rounded), label: 'Movie'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Tv'),
        ],
        selectedItemColor: Color.fromARGB(255, 212, 30, 30),
        unselectedItemColor: Colors.grey[300],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 30,
      ),
    );
  }
}
