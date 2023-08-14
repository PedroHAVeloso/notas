import 'package:notas/interfaces/notas.dart';
import 'package:notas/utilitarios/media_aritmetica.dart';

/// Calcula a média aritmética com base em notas.
final class MediaAritmeticaNotas extends MediaAritmetica {
  /// Exige uma variável do tipo [Notas] para as operações.
  MediaAritmeticaNotas(this.notas);

  /// Notas.
  final Notas notas;

  @override
  List<num> get listaNumeros => notas.listaNotas;
}
