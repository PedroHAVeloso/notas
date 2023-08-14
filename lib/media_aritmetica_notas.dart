import 'package:notas/media_aritmetica.dart';
import 'package:notas/notas.dart';

final class MediaAritmeticaNotas extends MediaAritmetica {
  MediaAritmeticaNotas(this.notas);

  final Notas notas;

  @override
  List<num> get listaNumeros => notas.listaNotas;
}
