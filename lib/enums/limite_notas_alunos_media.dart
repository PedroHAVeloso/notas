/// Limites de notas para alunos. Define as notas máxima e miníma aceitáveis
/// para o cálculo da média do aluno.
enum LimiteNotasAlunosMedia {
  /// Nota miníma permitida.
  minima(0.0),

  /// Nota máxima permitida.
  maxima(10.0);

  const LimiteNotasAlunosMedia(this.nota);

  /// Nota.
  final num nota;
}
