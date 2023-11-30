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
            child: Text('Hola, estas bien?',
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
            child: Text('Hola',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fdifusoribero.com%2F2021%2F07%2F19%2Fel-analisis-de-la-evolucion-de-los-memes%2F&psig=AOvVaw0wiAGuSk8xNXEPyR66mooA&ust=1701468938209000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPif-fjf7IIDFQAAAAAdAAAAABAE'),
        const SizedBox(height: 10)
      ],
    );
  }
}