import 'package:clone/MainView.dart';
import 'package:clone/pages/settingPage.dart';
import 'package:flutter/material.dart';

import 'pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Setting(),
      routes: {'/HomePage': (context) => const HomePage()},
    );
  }
}
