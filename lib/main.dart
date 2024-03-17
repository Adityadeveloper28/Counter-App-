import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int counter = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        backgroundColor: Colors.brown[100],
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Counter Value: $counter",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
          print("you press the button");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
