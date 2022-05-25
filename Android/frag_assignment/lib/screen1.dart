import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color c = Colors.blue;
Color? a = Colors.grey[700];
Color? b = Colors.grey[400];
int number = 1;

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(

                  onPressed: () {
                  setState(() {
                    c = Colors.blue;
                    number = 1;
                    a = Colors.grey[700];
                    b = Colors.grey[400];
                  });
                },
                  child: const Text("Frag1"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(a)
                  ),
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    c = Colors.red;
                    number = 2;
                    b = Colors.grey[700];
                    a = Colors.grey[400];
                  });
                },
                  child: const Text("Frag2"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(b)
                  ),
                ),
              ],
            ),
            Text(
              "Fragment " + number.toString(),
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
