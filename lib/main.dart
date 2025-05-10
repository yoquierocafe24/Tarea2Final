import 'package:flutter/material.dart';

import 'widgets/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Telegram App",

      home: MyHomePage(),
    );
  }
}
