/// Operações envolvendo média aritmética de números.
abstract base class MediaAritmetica {
  /// Lista de números para calcular a média.
  List<num> get listaNumeros;

  /// Calcula a média aritmética de N números.
  double calcularMedia() {
    var media = 0.0;

    for (final numero in listaNumeros) {
      media += numero;
    }

    return media /= listaNumeros.length;
  }
}
