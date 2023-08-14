/// Interface com o padrão exigido para notas escolares.
///
/// Devem ser um ou mais números inteiros ou de ponto flutuante, contidos dentro
/// de uma lista.
interface class Notas {
  /// As notas devem ser uma lista com números inteiros ou de ponto flutuante.
  const Notas(this.listaNotas);

  /// Lista de notas.
  final List<num> listaNotas;
}
