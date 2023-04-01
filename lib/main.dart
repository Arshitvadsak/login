import 'package:flutter/material.dart';
import 'package:untitled3/screens/introscreen.dart';
import 'package:untitled3/screens/login.dart';
import 'package:untitled3/screens/singup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        '/': (context) => MyApp(),
        'login': (context) => LoginPage(),
        'signup': (context) => SignupPage(),
        // 'intro': (context) => Intro(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
        ),
      ),
    );
  }
}
