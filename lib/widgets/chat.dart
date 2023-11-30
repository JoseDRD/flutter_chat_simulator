import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return _BurbujaDelChat();
        },
      ),
    );
  }
}

class _BurbujaDelChat extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.primary,
            borderRadius: BorderRadius.all(Radius.circular(100))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hola mundo',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}