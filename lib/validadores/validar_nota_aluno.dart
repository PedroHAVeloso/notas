import 'package:notas/enums/limite_notas_alunos_media.dart';
import 'package:notas/interfaces/notas.dart';

/// Validador da entrada de notas de alunos.
final class ValidarNotaAluno {
  /// As [notas] devem ser do tipo [Notas].
  ValidarNotaAluno(this.notas);

  /// Notas do aluno.
  final Notas notas;

  final _notaMaxima = LimiteNotasAlunosMedia.maxima.nota;
  final _notaMinima = LimiteNotasAlunosMedia.minima.nota;

  /// Valida as notas dos alunos seguindo a regra de máximas e minímas
  /// estabelecida.
  ({bool erro, String? descricaoErro}) validarNotas() {
    for (final nota in notas.listaNotas) {
      if (nota > _notaMaxima) {
        return (
          erro: true,
          descricaoErro: 'A nota $nota é maior que $_notaMaxima.',
        );
      }

      if (nota < _notaMinima) {
        return (
          erro: true,
          descricaoErro: 'A nota $nota é menor que $_notaMinima.',
        );
      }
    }

    return (erro: false, descricaoErro: null);
  }
}
