import 'package:chat_simulator/screens/pantalla_chat.dart';
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
      title: 'Chat simulator',
      home: const PantallaChat(),
    );
  }
}