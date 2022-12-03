import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool changeState = true;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Stack(
          children: [
            Image.asset('assets/images/image1.png'),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(50)
                      )
                  ),
                  padding: const EdgeInsets.only(
                    top: 40,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  height: MediaQuery.of(context).size.height * 3 /4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          decoration: const InputDecoration(
                              labelText: "Card Number",
                            prefixIcon: Icon(Icons.credit_card)
                          ),
                          controller: controller,
                          //expands: true,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 2,
                              child: TextField(
                                decoration: const InputDecoration(
                                    labelText: "Expiry Date",
                                    prefixIcon: Icon(Icons.credit_card)
                                ),
                                controller: controller,
                                //expands: true,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: const InputDecoration(
                                    labelText: "CVV2",
                                    prefixIcon: Icon(Icons.credit_card)
                                ),
                                controller: controller,
                                //expands: true,
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: const InputDecoration(
                              labelText: "Name",
                              prefixIcon: Icon(Icons.credit_card)
                          ),
                          controller: controller,
                          //expands: true,
                        ),
                        ElevatedButton(
                            onPressed: () {

                            },
                            child: Text("Save"))
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    changeState = !changeState;
                  });
                },
                backgroundColor: Colors.white,
                child: Icon(
                  changeState ?  Icons.favorite_border : Icons.favorite,
                  color: changeState ?  Colors.indigo : Colors.red,
                ),
              ),
              top: (MediaQuery.of(context).size.height * 1 /4) - 32,
              right: MediaQuery.of(context).size.width * 1 / 7,
            )
          ],
        ),
      ),
    );
  }
}
