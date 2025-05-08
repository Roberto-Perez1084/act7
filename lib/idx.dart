import 'package:flutter/material.dart';

class idx extends StatelessWidget {
  const idx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 218, 255, 1), // Fondo azul
        centerTitle: true, // Texto centrado
        title: const Text('Index',
            style: TextStyle(
              color: Color(0xff000000), // Letra blanca
              fontSize: 20, // Tamaño 20
            )),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo1');
              },
              child: const Text('Ejemplo 1'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo2');
              },
              child: const Text('Ejemplo 2'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo3');
              },
              child: const Text('Ejemplo 3'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo4');
              },
              child: const Text('Ejemplo 4'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo5');
              },
              child: const Text('Ejemplo 5'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ejemplo6');
              },
              child: const Text('Ejemplo 6'),
            ),
          ),
        ],
      ),
    );
  }
}
