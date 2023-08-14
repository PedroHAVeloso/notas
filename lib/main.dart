import 'package:notas/media_aritmetica_notas.dart';
import 'package:notas/notas.dart';

void main() {
  final notas = Notas([10, 5]);
  final media = MediaAritmeticaNotas(notas).calcularMedia();
  print(media);
}
