import 'package:chat_simulator/src/domain/entities/mensaje.dart';
import 'package:chat_simulator/src/providers/mensaje_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<MensajesProvider>();

    return Expanded(
      child: ListView.builder(
        controller: chatProvider.controladorDelScroll,
        itemCount: chatProvider.listaDeMensajes.length,
        itemBuilder: (context, index) {
          
          final mensaje = chatProvider.listaDeMensajes[index];

          return (mensaje.escritoPor == EscritoPor.mi) 
            ? _BurbujaDelChatEl(mensaje)
            : _BurbujaDelChatElla(mensaje);
        },
      ),
    );
  }
}

class _BurbujaDelChatEl extends StatelessWidget {

  final Mensaje mensaje;

  _BurbujaDelChatEl(this.mensaje);

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.primary,
            borderRadius: const BorderRadius.all(Radius.circular(100))
          ),
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(mensaje.texto,
              style: const TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _BurbujaDelChatElla extends StatelessWidget {

  final Mensaje mensaje;

  
  _BurbujaDelChatElla(
    this.mensaje
  );

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;
    final tamano = MediaQuery.sizeOf(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(100))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              mensaje.texto,
              style: const TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            mensaje.imagenUrl,
            width: tamano.width * 0.7,
            height: 150,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {

              if (loadingProgress == null) return child;

              return Container(
                width: tamano.width * 0.7,
                height: 150,
                color: Colors.pinkAccent,
              );
            },
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}