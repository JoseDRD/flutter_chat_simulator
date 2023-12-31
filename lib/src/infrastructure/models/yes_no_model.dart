


import 'package:chat_simulator/src/domain/entities/mensaje.dart';

class YesNoModel {

  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => 
    YesNoModel(
      answer: json["answer"], 
      forced: json["forced"], 
      image: json["image"]
    );

  Mensaje enMensaje() => Mensaje(
    answer == "yes" ? 'Si' : 'No', 
    EscritoPor.mitsuri,
    image
    );

}