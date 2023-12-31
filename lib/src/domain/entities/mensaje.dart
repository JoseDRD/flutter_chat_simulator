enum EscritoPor {mi, mitsuri}

class Mensaje {

  final String texto;
  final EscritoPor escritoPor;
  final String imagenUrl;

  Mensaje(
    this.texto, 
    this.escritoPor,
    [this.imagenUrl = '']
  );


}