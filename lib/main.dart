import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:my_first_project/add_card.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/image1.png'),
          const Text(
            "Title",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              child: const SingleChildScrollView(
                child: Text(
                  "The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders. The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand. See also: IconTheme, which provides ambient configuration for icons. Icon, for showing icons the Material design icon library. ImageIcon, for showing icons from AssetImages or other ImageProviders.",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ),
          ),
          AnimatedButton.strip(
            width: 200,
            height: 70,
            text: 'افزودن کارت',
            isReverse: true,
            animatedOn: AnimatedOn.onHover,
            backgroundColor: Colors.blue,
            selectedTextColor: Colors.black,
            stripTransitionType: StripTransitionType.RIGHT_TO_LEFT,
            selectedBackgroundColor: Colors.white,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddCard()),
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddCard()),
                );
              },
              child: Text("Press Me"))
        ],
      ),
    );
  }
}
