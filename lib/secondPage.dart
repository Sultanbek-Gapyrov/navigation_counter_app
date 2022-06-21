import 'package:flutter/material.dart';
// import 'package:navigation_counter_app/main.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({this.result});
  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffbdbdbd),
              border: Border.all(),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 147, vertical: 20),
              child: Text(
                '$result ',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
