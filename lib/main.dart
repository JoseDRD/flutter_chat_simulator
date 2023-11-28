import 'package:chat_simulator/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TemaDeLaApp().tema(),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat simulator'),
        ),
        body: const Center(
          child: Text('Chat simulator'),
        ),
      ),
    );
  }
}