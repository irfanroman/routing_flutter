import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int myButton = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HALO"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          mainAxisAlignment: myButton == 0? MainAxisAlignment.start:
          MainAxisAlignment.center,
          crossAxisAlignment: myButton == 0? CrossAxisAlignment.start:
          CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: myButton == 0? MainAxisAlignment.start:
              MainAxisAlignment.center,
              crossAxisAlignment: myButton == 0? CrossAxisAlignment.start:
              CrossAxisAlignment.center,
              children: [
                // ignore: avoid_types_as_parameter_names
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myButton += 1;
                        if (myButton == 1) {
                          Alignment.center;
                        } else if (myButton == 2) {
                         myButton = 2;
                        } else if (myButton > 2) {
                          myButton = 0;
                        }
                      });
                    },
                    child: Text("Press"))
              ],
            )
          ],
        ));
  }
}
