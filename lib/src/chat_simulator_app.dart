import 'package:chat_simulator/src/screens/pantalla_chat.dart';
import 'package:chat_simulator/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ChatSimulator extends StatelessWidget {
  const ChatSimulator({super.key});

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