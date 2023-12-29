import 'package:chat_simulator/src/providers/mensaje_provider.dart';
import 'package:chat_simulator/src/widgets/chat.dart';
import 'package:chat_simulator/src/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PantallaChat extends StatelessWidget {
  const PantallaChat({super.key});

  

  @override
  Widget build(BuildContext context) {

    final mensajes = context.watch<MensajesProvider>();

    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://elcomercio.pe/resizer/0-ranfKF_sQNBuF7FmnRQB6ZMS4=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/GJIUAERKF5EL5D63NH7KGSVMJI.png'),
            ),
          ),
          title: const Text('Mitsuri ❤️❤️❤️'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10
            ),
            child: Column(
              children: [
                const Chat(),
                MiTextField(
                  enviar: mensajes.enviarMensaje
                ),
              ],
            ),
          )
        ),
      );
  }
}