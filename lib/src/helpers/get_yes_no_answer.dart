import 'package:chat_simulator/src/domain/entities/mensaje.dart';
import 'package:chat_simulator/src/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Mensaje> obtenerRespuesta() async {
    final respuesta = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(respuesta.data);

    return yesNoModel.enMensaje();
  }

}