import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//! CupertinoPicker

class E4 extends StatefulWidget {
  const E4({Key? key}) : super(key: key);

  @override
  State<E4> createState() => _E4State();
}

class _E4State extends State<E4> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Picker Example'),
        backgroundColor: Color.fromRGBO(253, 218, 255, 1),
      ),
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Value = $_selectedValue'),
            onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoPicker(
                  backgroundColor: Colors.white,
                  itemExtent: 30,
                  scrollController: FixedExtentScrollController(
                    initialItem: _selectedValue,
                  ),
                  children: const [
                    Text('0'),
                    Text('1'),
                    Text('2'),
                  ],
                  onSelectedItemChanged: (int value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
