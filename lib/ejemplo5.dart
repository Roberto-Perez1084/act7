import 'package:flutter/material.dart';

//! Time Picker &&& Date picker(91)

class E5 extends StatefulWidget {
  const E5({Key? key}) : super(key: key);

  @override
  _E5State createState() => _E5State();
}

class _E5State extends State<E5> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker Example'),
        backgroundColor: Color.fromRGBO(253, 218, 255, 1), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Choose Date"),
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (dateTime != null) {
                  setState(() {
                    selectedDate = dateTime;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
