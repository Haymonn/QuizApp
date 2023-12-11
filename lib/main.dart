import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import '../models/question_model.dart';
import '../models/db_connection.dart';

void main() {
  // var db = DBConnect();
  // db.fetchQuestions();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
