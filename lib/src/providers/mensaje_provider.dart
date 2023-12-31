

import 'package:chat_simulator/src/domain/entities/mensaje.dart';
import 'package:chat_simulator/src/helpers/get_yes_no_answer.dart';
import 'package:flutter/material.dart';

class MensajesProvider extends ChangeNotifier {
  
  final controladorDelScroll = ScrollController();

  List<Mensaje> listaDeMensajes = [];

  Future<void> enviarMensaje(String mensaje) async {

    final mensajePorAgregar = Mensaje(mensaje, EscritoPor.mi);
    listaDeMensajes.add(mensajePorAgregar);
    moverScrollAlFinal();
    notifyListeners();

    if (mensaje.endsWith('?')) {
      Mensaje mensajeDeMitsuri = await GetYesNoAnswer().obtenerRespuesta();
      listaDeMensajes.add(mensajeDeMitsuri);
      moverScrollAlFinal();
      notifyListeners();
    }
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