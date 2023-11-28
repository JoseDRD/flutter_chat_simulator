import 'package:flutter/cupertino.dart';
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
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10
                ),
                child: Text('Hola')
              )
            ],
          )
        ),
      );
  }
}