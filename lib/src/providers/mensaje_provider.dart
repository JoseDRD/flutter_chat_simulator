

import 'package:chat_simulator/src/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';

class MensajesProvider extends ChangeNotifier {
  
  final controladorDelScroll = ScrollController();

  List<Mensaje> listaDeMensajes = [
    Mensaje('Hola como estas?', EscritoPor.mi),
    Mensaje('yo biemm', EscritoPor.mi)
  ];

  Future<void> enviarMensaje(String mensaje) async {

    final mensajePorAgregar = Mensaje(mensaje, EscritoPor.mi);
    listaDeMensajes.add(mensajePorAgregar);
    moverScrollAlFinal();
    notifyListeners();
  }

  Future<void> moverScrollAlFinal() async {

    await Future.delayed(const Duration(milliseconds: 100));

    controladorDelScroll.animateTo(
      controladorDelScroll.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
    );

  }

}