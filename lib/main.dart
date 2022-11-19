import 'package:flutter/material.dart';
import 'package:my_first_project/add_card.dart';

void main() => runApp(FirstScreen());

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
           Image.asset('assets/images/image1.png'),
            Text(
              "Title",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Text(
                      "The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders. The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders.",
                      style: TextStyle(
                          fontSize: 20,
                        color: Colors.grey
                      ),
                    ),
                  ),
                ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AddCard()));
                },
                child: Text("Press Me"))
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
