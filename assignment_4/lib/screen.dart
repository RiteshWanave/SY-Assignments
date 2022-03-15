import 'package:assignment_4/template.dart';
import 'package:flutter/material.dart';


class ScrollScreen extends StatefulWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  State<ScrollScreen> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Custom List View'),
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 20.0,
            ),
            InfoCard(title: 'C++',info: 'This is C++', pict: 'https://brandslogos.com/wp-content/uploads/images/large/c-logo.png',),
            InfoCard(title: 'Java', info: 'This is Java', pict: 'https://1000logos.net/wp-content/uploads/2020/09/Java-Logo-500x313.png',),
            InfoCard(title: 'Python', info: 'This is Python', pict: 'https://1000logos.net/wp-content/uploads/2020/08/Python-Logo-500x313.png',),
            InfoCard(title: 'C', info: 'This is C', pict: 'https://img.icons8.com/color/452/c-programming.png',),
            InfoCard(title: 'Dart', info: 'This is Dart', pict: 'https://seeklogo.com/images/D/dart-programming-language-logo-FF81164A13-seeklogo.com.png',),
            InfoCard(title: 'JS', info: 'This is JS', pict: 'https://1000logos.net/wp-content/uploads/2020/09/JavaScript-Logo-500x313.png',),
            InfoCard(title: 'Rubby', info: 'This is Rubby', pict: 'https://www.ruby-lang.org/images/header-ruby-logo.png',),
          ],
        ),
      ),
    );
  }
}
