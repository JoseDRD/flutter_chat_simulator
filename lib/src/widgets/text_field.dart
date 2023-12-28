import 'package:flutter/material.dart';

class MiTextField extends StatelessWidget {
  const MiTextField({super.key});

  @override
  Widget build(BuildContext context) {

    final colores = Theme.of(context).colorScheme;

    final borde = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(color: Colors.transparent)
    );

    final decoracion = InputDecoration(
        enabledBorder: borde,
        focusedBorder: borde,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: (){},
        )
      );

    return TextFormField(
      decoration: decoracion,
      
      onChanged: (texto){
        print(texto);
      },
    );
  }
}