import 'package:flutter/material.dart';

import 'model/user.dart';
import 'model/user.dart';
import 'model/user.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  late int Id;
  late String Name;
  late int Age;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Id',
                    labelText: 'Enter your Id',
                  ),
                  controller: idController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Name',
                    labelText: 'Enter your Name',
                  ),
                  controller: nameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Age',
                    labelText: 'Enter your Age',
                  ),
                  controller: ageController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        Id = int.parse(idController.text);
                        Name = nameController.text;
                        Age = int.parse(ageController.text);
                        var user = User(id: Id, name: Name, age: Age);
                        await insertUser(user);
                        print(await users());
                      },
                      child: const Text('Create'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Id = int.parse(idController.text);
                        Name = nameController.text;
                        Age = int.parse(ageController.text);
                        var user = User(id: Id, name: Name, age: Age);
                        await updateUser(user);
                      },
                      child: const Text('Update'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
