import 'package:flutter/material.dart';
import 'package:myapp/idx.dart';
import 'package:myapp/ejemplo1.dart';
import 'package:myapp/ejemplo2.dart';
import 'package:myapp/ejemplo3.dart';
import 'package:myapp/ejemplo4.dart';
import 'package:myapp/ejemplo5.dart';
import 'package:myapp/ejemplo6.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad 7',
      initialRoute: '/',
      routes: {
        '/': (context) => const idx(),
        '/ejemplo1': (context) => const E1(),
        '/ejemplo2': (context) => const E2(),
        '/ejemplo3': (context) => const E3(),
        '/ejemplo4': (context) => const E4(),
        '/ejemplo5': (context) => const E5(),
        '/ejemplo6': (context) => const E6(),
      },
    );
  }
}
