import 'package:flutter/material.dart';

//! CloseButton

class E3 extends StatelessWidget {
  const E3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Close Button Example'),
          backgroundColor: Color.fromRGBO(253, 218, 255, 1),      
      ),
      body: Center(
        child: CloseButton(
          color: Colors.red,
          onPressed: () {
            debugPrint("Do something");
          },
        ),
      ),
    );
  }
}
