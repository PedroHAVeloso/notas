abstract base class MediaAritmetica {
  List<num> get listaNumeros;

  double calcularMedia() {
    var media = 0.0;

    for (final numero in listaNumeros) {
      media += numero;
    }

    return media /= listaNumeros.length;
  }
}
