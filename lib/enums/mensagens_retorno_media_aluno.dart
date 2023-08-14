/// Mensanges de retorno após o cálculo da média da nota do aluno.
enum MensagensRetornoMediaAluno {
  /// Mensagem de reprovado.
  reprovado('Aluno reprovado.'),

  /// Mensagem de recuperação.
  recuperacao('Aluno de recuperação.'),

  /// Mensagem de aprovado.
  aprovado('Aluno aprovado.'),

  /// Mensagem para comparecer à secretaria.
  comparecerSecretaria('Dirija-se à secretaria, por favor.');

  const MensagensRetornoMediaAluno(this.mensagem);

  /// Texto da mensagem.
  final String mensagem;
}
