//---------------------------------------------------------------------------------//
library precisometrologia_app.pressao.cert.globals;

//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-model-wrappers/preciso-model-globals.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
//---------------------------------------------------------------------------------//
// VAR LIST - VÁRIAVEIS GLOBAIS DO MODELO
//---------------------------------------------------------------------------------//

// DataMap for pressao
Map<String, dynamic> dataMapPrecisoMedidorPressao5Leituras = {
  'Tipo de Instrumento': "Medidor de Pressão - 5 Leituras",
  'IDTipo': "R101180813F",
  'Unidade': selectedGrandeza,
  'Classe': selectedClasse,
  'Instrumento': selectedInstrumento,
  'Inicio de Escala': escalaStartFormController.text,
  'Final de Escala': escalaEndFormController.text,
  'Inicio da Faixa de Uso': faixaStartFormController.text,
  'Final da Faixa de Uso': faixaEndFormController.text,
  'Valor de uma Divisao': divisaoFormController.text,
  'V.I.I 1 - Leitura 1': pressaoL5C1VII1FormController.text,
  'V.I.I 2 - Leitura 1': pressaoL5C1VII2FormController.text,
  'V.I.I 3 - Leitura 1': pressaoL5C1VII3FormController.text,
  'V.I.I 4 - Leitura 1': pressaoL5C1VII4FormController.text,
  'V.I.I 5 - Leitura 1': pressaoL5C1VII5FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 1': pressaoL5C1R1VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 1': pressaoL5C1R1VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 1': pressaoL5C1R1VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 2': pressaoL5C1R2VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 2': pressaoL5C1R2VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 2': pressaoL5C1R2VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 3': pressaoL5C1R3VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 3': pressaoL5C1R3VCC1FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 3': pressaoL5C1R3VCC1FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 4': pressaoL5C1R4VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 4': pressaoL5C1R4VCC1FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 4': pressaoL5C1R4VCC1FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 5': pressaoL5C1R5VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 5': pressaoL5C1R5VCC1FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 5': pressaoL5C1R5VCC1FormController.text,
  'V.I.I 1 - Leitura 2': pressaoL5C1VII5FormController.text,
  'V.I.I 2 - Leitura 2': pressaoL5C1VII4FormController.text,
  'V.I.I 3 - Leitura 2': pressaoL5C1VII3FormController.text,
  'V.I.I 4 - Leitura 2': pressaoL5C1VII2FormController.text,
  'V.I.I 5 - Leitura 2': pressaoL5C1VII1FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 1': pressaoL5C2R1VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 1': pressaoL5C2R1VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 1': pressaoL5C2R1VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 2': pressaoL5C2R2VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 2': pressaoL5C2R2VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 2': pressaoL5C2R2VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 3': pressaoL5C2R3VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 3': pressaoL5C2R3VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 3': pressaoL5C2R3VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 4': pressaoL5C2R4VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 4': pressaoL5C2R4VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 4': pressaoL5C2R4VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 5': pressaoL5C2R5VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 5': pressaoL5C2R5VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 5': pressaoL5C2R5VCC3FormController.text,
};

Map<String, dynamic> dataMapPrecisoMedidorPressao10Leituras = {
  'Tipo de Instrumento': "Medidor de Pressão - 10 Leituras",
  'IDTipo': "R101181123A",
  'Unidade': selectedGrandeza,
  'Classe': selectedClasse,
  'Instrumento': selectedInstrumento,
  'Inicio de Escala': escalaStartFormController.text,
  'Final de Escala': escalaEndFormController.text,
  'Inicio da Faixa de Uso': faixaStartFormController.text,
  'Final da Faixa de Uso': faixaEndFormController.text,
  'Valor de uma Divisao': divisaoFormController.text,
  'V.I.I 1 - Leitura 1': pressaoL10C1VII1FormController.text,
  'V.I.I 2 - Leitura 1': pressaoL10C1VII2FormController.text,
  'V.I.I 3 - Leitura 1': pressaoL10C1VII3FormController.text,
  'V.I.I 4 - Leitura 1': pressaoL10C1VII4FormController.text,
  'V.I.I 5 - Leitura 1': pressaoL10C1VII5FormController.text,
  'V.I.I 6 - Leitura 1': pressaoL10C1VII6FormController.text,
  'V.I.I 7 - Leitura 1': pressaoL10C1VII7FormController.text,
  'V.I.I 8 - Leitura 1': pressaoL10C1VII8FormController.text,
  'V.I.I 9 - Leitura 1': pressaoL10C1VII9FormController.text,
  'V.I.I 10 - Leitura 1': pressaoL10C1VII10FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 1': pressaoL10C1R1VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 1': pressaoL10C1R1VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 1': pressaoL10C1R1VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 2': pressaoL10C1R2VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 2': pressaoL10C1R2VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 2': pressaoL10C1R2VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 3': pressaoL10C1R3VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 3': pressaoL10C1R3VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 3': pressaoL10C1R3VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 4': pressaoL10C1R4VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 4': pressaoL10C1R4VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 4': pressaoL10C1R4VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 5': pressaoL10C1R5VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 5': pressaoL10C1R5VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 5': pressaoL10C1R5VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 6': pressaoL10C1R6VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 6': pressaoL10C1R6VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 6': pressaoL10C1R6VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 7': pressaoL10C1R7VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 7': pressaoL10C1R7VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 7': pressaoL10C1R7VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 8': pressaoL10C1R8VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 8': pressaoL10C1R8VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 8': pressaoL10C1R8VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 9': pressaoL10C1R9VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 9': pressaoL10C1R9VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 9': pressaoL10C1R9VCC3FormController.text,
  'V.V.C 1 - Leitura 1 - Linha 10': pressaoL10C1R10VCC1FormController.text,
  'V.V.C 2 - Leitura 1 - Linha 10': pressaoL10C1R10VCC2FormController.text,
  'V.V.C 3 - Leitura 1 - Linha 10': pressaoL10C1R10VCC3FormController.text,
  'V.I.I 1 - Leitura 2': pressaoL10C1VII10FormController.text,
  'V.I.I 2 - Leitura 2': pressaoL10C1VII9FormController.text,
  'V.I.I 3 - Leitura 2': pressaoL10C1VII8FormController.text,
  'V.I.I 4 - Leitura 2': pressaoL10C1VII7FormController.text,
  'V.I.I 5 - Leitura 2': pressaoL10C1VII6FormController.text,
  'V.I.I 6 - Leitura 2': pressaoL10C1VII5FormController.text,
  'V.I.I 7 - Leitura 2': pressaoL10C1VII4FormController.text,
  'V.I.I 8 - Leitura 2': pressaoL10C1VII3FormController.text,
  'V.I.I 9 - Leitura 2': pressaoL10C1VII2FormController.text,
  'V.I.I 10 - Leitura 2': pressaoL10C1VII1FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 1': pressaoL10C2R1VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 1': pressaoL10C2R1VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 1': pressaoL10C2R1VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 2': pressaoL10C2R2VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 2': pressaoL10C2R2VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 2': pressaoL10C2R2VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 3': pressaoL10C2R3VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 3': pressaoL10C2R3VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 3': pressaoL10C2R3VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 4': pressaoL10C2R4VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 4': pressaoL10C2R4VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 4': pressaoL10C2R4VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 5': pressaoL10C2R5VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 5': pressaoL10C2R5VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 5': pressaoL10C2R5VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 6': pressaoL10C2R6VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 6': pressaoL10C2R6VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 6': pressaoL10C2R6VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 7': pressaoL10C2R7VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 7': pressaoL10C2R7VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 7': pressaoL10C2R7VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 8': pressaoL10C2R8VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 8': pressaoL10C2R8VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 8': pressaoL10C2R8VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 9': pressaoL10C2R9VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 9': pressaoL10C2R9VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 9': pressaoL10C2R9VCC3FormController.text,
  'V.V.C 1 - Leitura 2 - Linha 10': pressaoL10C2R10VCC1FormController.text,
  'V.V.C 2 - Leitura 2 - Linha 10': pressaoL10C2R10VCC2FormController.text,
  'V.V.C 3 - Leitura 2 - Linha 10': pressaoL10C2R10VCC3FormController.text,
};

// Text Controllers for Data - Calibração Parte 1
// -- V.I.I's
var pressaoL5C1VII1FormController = TextEditingController();
var pressaoL5C1VII2FormController = TextEditingController();
var pressaoL5C1VII3FormController = TextEditingController();
var pressaoL5C1VII4FormController = TextEditingController();
var pressaoL5C1VII5FormController = TextEditingController();

// -- V.C.C - Linha 1
var pressaoL5C1R1VCC1FormController = TextEditingController();
var pressaoL5C1R1VCC2FormController = TextEditingController();
var pressaoL5C1R1VCC3FormController = TextEditingController();

// -- V.C.C - Linha 2
var pressaoL5C1R2VCC1FormController = TextEditingController();
var pressaoL5C1R2VCC2FormController = TextEditingController();
var pressaoL5C1R2VCC3FormController = TextEditingController();

// -- V.C.C - Linha 3
var pressaoL5C1R3VCC1FormController = TextEditingController();
var pressaoL5C1R3VCC2FormController = TextEditingController();
var pressaoL5C1R3VCC3FormController = TextEditingController();

// -- V.C.C - Linha 4
var pressaoL5C1R4VCC1FormController = TextEditingController();
var pressaoL5C1R4VCC2FormController = TextEditingController();
var pressaoL5C1R4VCC3FormController = TextEditingController();

// -- V.C.C - Linha 5
var pressaoL5C1R5VCC1FormController = TextEditingController();
var pressaoL5C1R5VCC2FormController = TextEditingController();
var pressaoL5C1R5VCC3FormController = TextEditingController();

// Text Controllers for Data - Calibração Parte 2

// -- V.C.C - Linha 1
var pressaoL5C2R1VCC1FormController = TextEditingController();
var pressaoL5C2R1VCC2FormController = TextEditingController();
var pressaoL5C2R1VCC3FormController = TextEditingController();

// -- V.C.C - Linha 2
var pressaoL5C2R2VCC1FormController = TextEditingController();
var pressaoL5C2R2VCC2FormController = TextEditingController();
var pressaoL5C2R2VCC3FormController = TextEditingController();

// -- V.C.C - Linha 3
var pressaoL5C2R3VCC1FormController = TextEditingController();
var pressaoL5C2R3VCC2FormController = TextEditingController();
var pressaoL5C2R3VCC3FormController = TextEditingController();

// -- V.C.C - Linha 4
var pressaoL5C2R4VCC1FormController = TextEditingController();
var pressaoL5C2R4VCC2FormController = TextEditingController();
var pressaoL5C2R4VCC3FormController = TextEditingController();

// -- V.C.C - Linha 5
var pressaoL5C2R5VCC1FormController = TextEditingController();
var pressaoL5C2R5VCC2FormController = TextEditingController();
var pressaoL5C2R5VCC3FormController = TextEditingController();

// Text Controllers for Data - Calibração Parte 1 - 10l
// -- V.I.I's
var pressaoL10C1VII1FormController = TextEditingController();
var pressaoL10C1VII2FormController = TextEditingController();
var pressaoL10C1VII3FormController = TextEditingController();
var pressaoL10C1VII4FormController = TextEditingController();
var pressaoL10C1VII5FormController = TextEditingController();
var pressaoL10C1VII6FormController = TextEditingController();
var pressaoL10C1VII7FormController = TextEditingController();
var pressaoL10C1VII8FormController = TextEditingController();
var pressaoL10C1VII9FormController = TextEditingController();
var pressaoL10C1VII10FormController = TextEditingController();

// -- V.C.C - Linha 1
var pressaoL10C1R1VCC1FormController = TextEditingController();
var pressaoL10C1R1VCC2FormController = TextEditingController();
var pressaoL10C1R1VCC3FormController = TextEditingController();

// -- V.C.C - Linha 2
var pressaoL10C1R2VCC1FormController = TextEditingController();
var pressaoL10C1R2VCC2FormController = TextEditingController();
var pressaoL10C1R2VCC3FormController = TextEditingController();

// -- V.C.C - Linha 3
var pressaoL10C1R3VCC1FormController = TextEditingController();
var pressaoL10C1R3VCC2FormController = TextEditingController();
var pressaoL10C1R3VCC3FormController = TextEditingController();

// -- V.C.C - Linha 4
var pressaoL10C1R4VCC1FormController = TextEditingController();
var pressaoL10C1R4VCC2FormController = TextEditingController();
var pressaoL10C1R4VCC3FormController = TextEditingController();

// -- V.C.C - Linha 5
var pressaoL10C1R5VCC1FormController = TextEditingController();
var pressaoL10C1R5VCC2FormController = TextEditingController();
var pressaoL10C1R5VCC3FormController = TextEditingController();

// -- V.C.C - Linha 6
var pressaoL10C1R6VCC1FormController = TextEditingController();
var pressaoL10C1R6VCC2FormController = TextEditingController();
var pressaoL10C1R6VCC3FormController = TextEditingController();

// -- V.C.C - Linha 7
var pressaoL10C1R7VCC1FormController = TextEditingController();
var pressaoL10C1R7VCC2FormController = TextEditingController();
var pressaoL10C1R7VCC3FormController = TextEditingController();

// -- V.C.C - Linha 8
var pressaoL10C1R8VCC1FormController = TextEditingController();
var pressaoL10C1R8VCC2FormController = TextEditingController();
var pressaoL10C1R8VCC3FormController = TextEditingController();

// -- V.C.C - Linha 9
var pressaoL10C1R9VCC1FormController = TextEditingController();
var pressaoL10C1R9VCC2FormController = TextEditingController();
var pressaoL10C1R9VCC3FormController = TextEditingController();

// -- V.C.C - Linha 10
var pressaoL10C1R10VCC1FormController = TextEditingController();
var pressaoL10C1R10VCC2FormController = TextEditingController();
var pressaoL10C1R10VCC3FormController = TextEditingController();

// Text Controllers for Data - Calibração Parte 2 - 10l

// -- V.C.C - Linha 1
var pressaoL10C2R1VCC1FormController = TextEditingController();
var pressaoL10C2R1VCC2FormController = TextEditingController();
var pressaoL10C2R1VCC3FormController = TextEditingController();

// -- V.C.C - Linha 2
var pressaoL10C2R2VCC1FormController = TextEditingController();
var pressaoL10C2R2VCC2FormController = TextEditingController();
var pressaoL10C2R2VCC3FormController = TextEditingController();

// -- V.C.C - Linha 3
var pressaoL10C2R3VCC1FormController = TextEditingController();
var pressaoL10C2R3VCC2FormController = TextEditingController();
var pressaoL10C2R3VCC3FormController = TextEditingController();

// -- V.C.C - Linha 4
var pressaoL10C2R4VCC1FormController = TextEditingController();
var pressaoL10C2R4VCC2FormController = TextEditingController();
var pressaoL10C2R4VCC3FormController = TextEditingController();

// -- V.C.C - Linha 5
var pressaoL10C2R5VCC1FormController = TextEditingController();
var pressaoL10C2R5VCC2FormController = TextEditingController();
var pressaoL10C2R5VCC3FormController = TextEditingController();

// -- V.C.C - Linha 6
var pressaoL10C2R6VCC1FormController = TextEditingController();
var pressaoL10C2R6VCC2FormController = TextEditingController();
var pressaoL10C2R6VCC3FormController = TextEditingController();

// -- V.C.C - Linha 7
var pressaoL10C2R7VCC1FormController = TextEditingController();
var pressaoL10C2R7VCC2FormController = TextEditingController();
var pressaoL10C2R7VCC3FormController = TextEditingController();

// -- V.C.C - Linha 8
var pressaoL10C2R8VCC1FormController = TextEditingController();
var pressaoL10C2R8VCC2FormController = TextEditingController();
var pressaoL10C2R8VCC3FormController = TextEditingController();

// -- V.C.C - Linha 9
var pressaoL10C2R9VCC1FormController = TextEditingController();
var pressaoL10C2R9VCC2FormController = TextEditingController();
var pressaoL10C2R9VCC3FormController = TextEditingController();

// -- V.C.C - Linha 10
var pressaoL10C2R10VCC1FormController = TextEditingController();
var pressaoL10C2R10VCC2FormController = TextEditingController();
var pressaoL10C2R10VCC3FormController = TextEditingController();
