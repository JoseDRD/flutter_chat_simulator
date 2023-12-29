import 'package:flutter/material.dart';

class MiTextField extends StatelessWidget {

  final ValueChanged<String> enviar;

  const MiTextField({
    required this.enviar,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    
    

    final textoActual = TextEditingController();

    //final colores = Theme.of(context).colorScheme;

    final focusNode = FocusNode();

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
            focusNode.unfocus();
            enviar(textoActual.text);
            textoActual.clear();
          },
        )
      );


    return TextFormField(
      decoration: decoracion,
      controller: textoActual,
      focusNode: focusNode,

      onTapOutside: (evento) => focusNode.unfocus(),

      onFieldSubmitted: (textoCompleto){
        enviar(textoCompleto);
        textoActual.clear();
        focusNode.requestFocus();
      },
    );
  }
}