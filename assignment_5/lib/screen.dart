import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   TextEditingController weight = TextEditingController();
   TextEditingController height = TextEditingController();
   late double w1, h1;
   late double bmi=10;
   late String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
          elevation: 0.0,
          backgroundColor: Colors.grey[500],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Enter Your Weight',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]
                      ),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 45.0,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //color: Colors.green,
                    child: TextField(
                      controller: weight,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        hintText: 'in KG'
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Enter Your Height',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]
                      ),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 45.0,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //color: Colors.green,
                    child: TextField(
                      controller: height,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                          hintText: 'in cm'
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){
                w1 = double.parse(weight.text);
                h1 = double.parse(height.text);
                setState(() {
                  bmi = ((10000*w1)/(h1*h1));
                  bmi = double.parse(bmi.toStringAsFixed(2));
                  if(bmi <= 18.5) text = "Underweight";
                  else if(bmi < 25.5) text = "Normal";
                  else text = "Overweight";
                });
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('BMI is $bmi & Your are $text',),
                    );
                  },
                );
              },
              child: const Text('Calculate BMI'),
            ),
          ],
        ),
      ),
    );
  }
}
