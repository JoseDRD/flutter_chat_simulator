import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return index % 2 == 0
            ? _BurbujaDelChatEl()
            : _BurbujaDelChatElla();
          
        },
      ),
    );
  }
}

class _BurbujaDelChatEl extends StatelessWidget {

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
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hola',
              style: TextStyle(
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
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hola, como estas?',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://www.gifcen.com/wp-content/uploads/2023/07/mitsuri-wallpaper-6.gif',
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