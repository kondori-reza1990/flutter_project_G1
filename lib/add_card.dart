import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Stack(
        children: [
          Image.asset('assets/images/image1.png'),
          Align(
            alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50)
                    )
                ),
                height: MediaQuery.of(context).size.height * 3 /4,
              )
    ),
          Positioned(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.favorite_border,
                color: Colors.indigo,
              ),
            ),
            top: (MediaQuery.of(context).size.height * 1 /4) - 32,
            right: MediaQuery.of(context).size.width * 1 / 7,
          )
        ],
      ),
    );
  }
}
