import 'package:flutter/material.dart';
import 'package:navigation_counter_app/secondPage.dart';
// import 'package:navigation_counter_app/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 0;
  void increment() {
    number++;
    setState(() {});
  }

  void decrement() {
    number--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          title: const Text(
            'Task 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SecondPage(
                            result: number.toString(),
                          )),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffbdbdbd),
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 147, vertical: 20),
                    child: Text(
                      'Сан: $number',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(primary: Colors.blue[800]),
                    child: const Icon(
                      Icons.remove_circle,
                      size: 60,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.blue[800]),
                    onPressed: increment,
                    child: const Icon(
                      Icons.add_circle,
                      size: 60,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
