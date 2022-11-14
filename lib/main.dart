import 'package:flutter/material.dart';

void main() => runApp(FirstScreen());

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = "My First App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text("First Project"),
          centerTitle: true,
          leading: Icon(Icons.ad_units),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    text = "Change text";
                  });
                },
                child: Text("Change"))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                text = "Change text with float";
              });
            },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

/*
class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  String text = "My First App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
                onPressed: () {
                  text = "Change text";
                },
                child: Text("Change"))
          ],
        ),
      ),
    );
  }
}*/
