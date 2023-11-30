import 'package:chat_simulator/widgets/chat.dart';
import 'package:flutter/material.dart';

class PantallaChat extends StatelessWidget {
  const PantallaChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://elcomercio.pe/resizer/0-ranfKF_sQNBuF7FmnRQB6ZMS4=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/GJIUAERKF5EL5D63NH7KGSVMJI.png'),
            ),
          ),
          title: const Text('Chat simulator'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10
            ),
            child: Column(
              children: [
                Chat(),
                TextField(

                )
              ],
            ),
          )
        ),
      );
  }
}