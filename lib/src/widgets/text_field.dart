import 'package:flutter/material.dart';

class MiTextField extends StatelessWidget {
  const MiTextField({super.key});

  @override
  Widget build(BuildContext context) {

    final texto_actual = TextEditingController();

    final colores = Theme.of(context).colorScheme;

    final borde = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(color: Colors.transparent)
    );

    final decoracion = InputDecoration(
        enabledBorder: borde,
        focusedBorder: borde,
        hintText: 'Escribe algo',
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: (){
            texto_actual.clear();
          },
        )
      );



    return TextFormField(
      decoration: decoracion,
      
      controller: texto_actual,
      onFieldSubmitted: (textoCompleto){
        texto_actual.clear();
      },
      onChanged: (texto){
        print(texto);
      },
    );
  }
}