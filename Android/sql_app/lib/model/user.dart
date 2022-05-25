import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/widgets.dart';

Future<Database> databaseFunction() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), 'user_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },
    version: 1,
  );
  return database;
}

Future<void> insertUser(User user) async {
  final db = await databaseFunction();

  await db.insert(
    'users',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<User>> users() async {
  final db = await databaseFunction();

  final List<Map<String, dynamic>> maps = await db.query('users');

  return List.generate(maps.length, (i) {
    return User(
      id: maps[i]['id'],
      name: maps[i]['name'],
      age: maps[i]['age'],
    );
  });
}

Future<void> updateUser(User user) async {
  final db = await databaseFunction();


  await db.update(
    'users',
    user.toMap(),
    where: 'id = ?',
    whereArgs: [user.id],
  );
}

Future<void> deleteUser(int id) async {
  final db = await databaseFunction();

  await db.delete(
    'users',
    where: 'id = ?',
    whereArgs: [id],
  );
}

// var fido = const User(
//   id: 0,
//   name: 'Fido',
//   age: 35,
// );

// fido = User(
// id: fido.id,
// name: fido.name,
// age: fido.age + 7,
// );
// await updateUser(fido);
//
// print(await users()); // Prints Fido with age 42.
//
// await deleteUser(fido.id);
//
// print(await users());

class User {
  final int id;
  final String name;
  final int age;

  const User({
    required this.id,
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  @override
  String toString() {
    return 'User{id: $id, name: $name, age: $age}';
  }
}