// ignore_for_file: avoid_print

import 'dart:io';

import 'package:notas/enums/mensagens_retorno_media_aluno.dart';
import 'package:notas/interfaces/notas.dart';
import 'package:notas/utilitarios/media_aritmetica_notas.dart';
import 'package:notas/validadores/validar_nota_aluno.dart';

void main() {
  print('Informe a primeira nota:');
  final nota1 = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  print('Informe a segunda nota:');
  final nota2 = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  final notas = Notas([nota1, nota2]);

  final validarNotas = ValidarNotaAluno(notas).validarNotas();

  if (validarNotas.erro) {
    print(validarNotas.descricaoErro);
    return;
  }

  final media = MediaAritmeticaNotas(notas).calcularMedia();

  switch (media) {
    case < 3:
      print(MensagensRetornoMediaAluno.reprovado.mensagem);
      print(MensagensRetornoMediaAluno.comparecerSecretaria.mensagem);
    case < 6:
      print(MensagensRetornoMediaAluno.recuperacao.mensagem);
      print(MensagensRetornoMediaAluno.comparecerSecretaria.mensagem);
    default:
      print(MensagensRetornoMediaAluno.aprovado.mensagem);
      print(MensagensRetornoMediaAluno.comparecerSecretaria.mensagem);
  }
}
