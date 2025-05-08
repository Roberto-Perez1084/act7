import 'package:flutter/material.dart';

//! BottomNavigationBar

class E2 extends StatefulWidget {
  const E2({Key? key}) : super(key: key);

  @override
  State<E2> createState() => _E2State();
}

class _E2State extends State<E2> {
  int _currentIndex = 0;

  final List<Widget> body = const [
    Icon(Icons.home, size: 100),
    Icon(Icons.menu, size: 100),
    Icon(Icons.person, size: 100),
  ];

  final List<String> titles = [
    'Home',
    'Menu',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_currentIndex]),
        backgroundColor: Color.fromRGBO(253, 218, 255, 1),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
