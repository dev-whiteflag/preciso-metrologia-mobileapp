//---------------------------------------------------------------------------------//
library precisometrologia_app.termohigrometro.cert.globals;
//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
//---------------------------------------------------------------------------------//
// VAR LIST - VÁRIAVEIS GLOBAIS DO MODELO
//---------------------------------------------------------------------------------//

// DataMap for Termohigrometro
Map<String, dynamic> dataMapPrecisoTermohigrometro1Leitura = {
  'Tipo de Instrumento': "Termohigrômetro",
  'IDTipo': "R05150707I-1",
  'Unidade': selectedGrandeza,
  'Classe': selectedClasse,
  'Instrumento': selectedInstrumento,
  'Temperatura de Entrada: Inicio de Escala': escalaStartTempInFormController.text,
  'Temperatura de Entrada: Final de Escala': escalaEndTempInFormController.text,
  'Temperatura de Entrada: Inicio da Faixa de Uso': faixaStartTempInFormController.text,
  'Temperatura de Entrada: Final da Faixa de Uso': faixaEndTempInFormController.text,
  'Temperatura de Entrada: Valor de uma Divisão': divisaoTempInFormController.text,
  'Temperatura de Saida: Inicio de Escala': escalaStartTempOutFormController.text,
  'Temperatura de Saida: Final de Escala': escalaEndTempOutFormController.text,
  'Temperatura de Saida: Inicio da Faixa de Uso': faixaStartTempOutFormController.text,
  'Temperatura de Saida: Final da Faixa de Uso': faixaEndTempOutFormController.text,
  'Temperatura de Saida: Valor de uma Divisão': divisaoTempOutFormController.text,
  'Umidade Relativa: Inicio de Escala': escalaStartURFormController.text,
  'Umidade Relativa: Final de Escala': escalaEndURFormController.text,
  'Umidade Relativa: Inicio da Faixa de Uso': faixaStartURFormController.text,
  'Umidade Relativa: Final da Faixa de Uso': faixaEndURFormController.text,
  'Umidade Relativa: Valor de uma Divisão': divisaoURFormController.text,
  'V.C.C 1 - Leitura 1': termohigrometroVCC1FormController,
  'V.C.C 2 - Leitura 1': termohigrometroVCC2FormController,
  'V.C.C 3 - Leitura 1': termohigrometroVCC3FormController,
  'V.C.C 4 - Leitura 1': termohigrometroVCC4FormController,
  'V.C.C 5 - Leitura 1': termohigrometroVCC5FormController,
  'V.I.I 1 - Leitura 1 - Linha 1': termohigrometroR1VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 1': termohigrometroR1VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 1': termohigrometroR1VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 2': termohigrometroR2VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 2': termohigrometroR2VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 2': termohigrometroR2VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 3': termohigrometroR3VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 3': termohigrometroR3VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 3': termohigrometroR3VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 4': termohigrometroR4VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 4': termohigrometroR4VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 4': termohigrometroR4VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 5': termohigrometroR5VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 5': termohigrometroR5VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 5': termohigrometroR5VII3FormController,
};

Map<String, dynamic> dataMapPrecisoTermohigrometro2Leitura = {
  'Tipo de Instrumento': "Termohigrômetro",
  'IDTipo': "R05150707I-2",
  'Unidade': selectedGrandeza,
  'Classe': selectedClasse,
  'Instrumento': selectedInstrumento,
  'Temperatura de Entrada: Inicio de Escala': escalaStartTempInFormController.text,
  'Temperatura de Entrada: Final de Escala': escalaEndTempInFormController.text,
  'Temperatura de Entrada: Inicio da Faixa de Uso': faixaStartTempInFormController.text,
  'Temperatura de Entrada: Final da Faixa de Uso': faixaEndTempInFormController.text,
  'Temperatura de Entrada: Valor de uma Divisão': divisaoTempInFormController.text,
  'Temperatura de Saida: Inicio de Escala': escalaStartTempOutFormController.text,
  'Temperatura de Saida: Final de Escala': escalaEndTempOutFormController.text,
  'Temperatura de Saida: Inicio da Faixa de Uso': faixaStartTempOutFormController.text,
  'Temperatura de Saida: Final da Faixa de Uso': faixaEndTempOutFormController.text,
  'Temperatura de Saida: Valor de uma Divisão': divisaoTempOutFormController.text,
  'Umidade Relativa: Inicio de Escala': escalaStartURFormController.text,
  'Umidade Relativa: Final de Escala': escalaEndURFormController.text,
  'Umidade Relativa: Inicio da Faixa de Uso': faixaStartURFormController.text,
  'Umidade Relativa: Final da Faixa de Uso': faixaEndURFormController.text,
  'Umidade Relativa: Valor de uma Divisão': divisaoURFormController.text,
  'V.C.C 1 - Leitura 1': termohigrometroVCC1FormController,
  'V.C.C 2 - Leitura 1': termohigrometroVCC2FormController,
  'V.C.C 3 - Leitura 1': termohigrometroVCC3FormController,
  'V.C.C 4 - Leitura 1': termohigrometroVCC4FormController,
  'V.C.C 5 - Leitura 1': termohigrometroVCC5FormController,
  'V.I.I 1 - Leitura 1 - Linha 1': termohigrometroR1VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 1': termohigrometroR1VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 1': termohigrometroR1VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 2': termohigrometroR2VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 2': termohigrometroR2VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 2': termohigrometroR2VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 3': termohigrometroR3VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 3': termohigrometroR3VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 3': termohigrometroR3VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 4': termohigrometroR4VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 4': termohigrometroR4VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 4': termohigrometroR4VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 5': termohigrometroR5VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 5': termohigrometroR5VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 5': termohigrometroR5VII3FormController,
  'V.C.C 1 - Leitura 2': termohigrometroA1VCC1FormController,
  'V.C.C 2 - Leitura 2': termohigrometroA1VCC2FormController,
  'V.C.C 3 - Leitura 2': termohigrometroA1VCC3FormController,
  'V.C.C 4 - Leitura 2': termohigrometroA1VCC4FormController,
  'V.C.C 5 - Leitura 2': termohigrometroA1VCC5FormController,
  'V.I.I 1 - Leitura 2 - Linha 1': termohigrometroA1R1VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 1': termohigrometroA1R1VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 1': termohigrometroA1R1VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 2': termohigrometroA1R2VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 2': termohigrometroA1R2VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 2': termohigrometroA1R2VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 3': termohigrometroA1R3VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 3': termohigrometroA1R3VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 3': termohigrometroA1R3VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 4': termohigrometroA1R4VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 4': termohigrometroA1R4VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 4': termohigrometroA1R4VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 5': termohigrometroA1R5VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 5': termohigrometroA1R5VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 5': termohigrometroA1R5VII3FormController,
};

Map<String, dynamic> dataMapPrecisoTermohigrometro3Leitura = {
  'Tipo de Instrumento': "Termohigrômetro",
  'IDTipo': "R05150707I-3",
  'Unidade': selectedGrandeza,
  'Classe': selectedClasse,
  'Instrumento': selectedInstrumento,
  'Temperatura de Entrada: Inicio de Escala': escalaStartTempInFormController.text,
  'Temperatura de Entrada: Final de Escala': escalaEndTempInFormController.text,
  'Temperatura de Entrada: Inicio da Faixa de Uso': faixaStartTempInFormController.text,
  'Temperatura de Entrada: Final da Faixa de Uso': faixaEndTempInFormController.text,
  'Temperatura de Entrada: Valor de uma Divisão': divisaoTempInFormController.text,
  'Temperatura de Saida: Inicio de Escala': escalaStartTempOutFormController.text,
  'Temperatura de Saida: Final de Escala': escalaEndTempOutFormController.text,
  'Temperatura de Saida: Inicio da Faixa de Uso': faixaStartTempOutFormController.text,
  'Temperatura de Saida: Final da Faixa de Uso': faixaEndTempOutFormController.text,
  'Temperatura de Saida: Valor de uma Divisão': divisaoTempOutFormController.text,
  'Umidade Relativa: Inicio de Escala': escalaStartURFormController.text,
  'Umidade Relativa: Final de Escala': escalaEndURFormController.text,
  'Umidade Relativa: Inicio da Faixa de Uso': faixaStartURFormController.text,
  'Umidade Relativa: Final da Faixa de Uso': faixaEndURFormController.text,
  'Umidade Relativa: Valor de uma Divisão': divisaoURFormController.text,
  'V.C.C 1 - Leitura 1': termohigrometroVCC1FormController,
  'V.C.C 2 - Leitura 1': termohigrometroVCC2FormController,
  'V.C.C 3 - Leitura 1': termohigrometroVCC3FormController,
  'V.C.C 4 - Leitura 1': termohigrometroVCC4FormController,
  'V.C.C 5 - Leitura 1': termohigrometroVCC5FormController,
  'V.I.I 1 - Leitura 1 - Linha 1': termohigrometroR1VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 1': termohigrometroR1VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 1': termohigrometroR1VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 2': termohigrometroR2VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 2': termohigrometroR2VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 2': termohigrometroR2VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 3': termohigrometroR3VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 3': termohigrometroR3VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 3': termohigrometroR3VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 4': termohigrometroR4VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 4': termohigrometroR4VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 4': termohigrometroR4VII3FormController,
  'V.I.I 1 - Leitura 1 - Linha 5': termohigrometroR5VII1FormController,
  'V.I.I 2 - Leitura 1 - Linha 5': termohigrometroR5VII2FormController,
  'V.I.I 3 - Leitura 1 - Linha 5': termohigrometroR5VII3FormController,
  'V.C.C 1 - Leitura 2': termohigrometroA1VCC1FormController,
  'V.C.C 2 - Leitura 2': termohigrometroA1VCC2FormController,
  'V.C.C 3 - Leitura 2': termohigrometroA1VCC3FormController,
  'V.C.C 4 - Leitura 2': termohigrometroA1VCC4FormController,
  'V.C.C 5 - Leitura 2': termohigrometroA1VCC5FormController,
  'V.I.I 1 - Leitura 2 - Linha 1': termohigrometroA1R1VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 1': termohigrometroA1R1VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 1': termohigrometroA1R1VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 2': termohigrometroA1R2VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 2': termohigrometroA1R2VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 2': termohigrometroA1R2VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 3': termohigrometroA1R3VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 3': termohigrometroA1R3VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 3': termohigrometroA1R3VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 4': termohigrometroA1R4VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 4': termohigrometroA1R4VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 4': termohigrometroA1R4VII3FormController,
  'V.I.I 1 - Leitura 2 - Linha 5': termohigrometroA1R5VII1FormController,
  'V.I.I 2 - Leitura 2 - Linha 5': termohigrometroA1R5VII2FormController,
  'V.I.I 3 - Leitura 2 - Linha 5': termohigrometroA1R5VII3FormController,
  'V.C.C 1 - Leitura 3': termohigrometroA2VCC1FormController,
  'V.C.C 2 - Leitura 3': termohigrometroA2VCC2FormController,
  'V.C.C 3 - Leitura 3': termohigrometroA2VCC3FormController,
  'V.C.C 4 - Leitura 3': termohigrometroA2VCC4FormController,
  'V.C.C 5 - Leitura 3': termohigrometroA2VCC5FormController,
  'V.I.I 1 - Leitura 3 - Linha 1': termohigrometroA2R1VII1FormController,
  'V.I.I 2 - Leitura 3 - Linha 1': termohigrometroA2R1VII2FormController,
  'V.I.I 3 - Leitura 3 - Linha 1': termohigrometroA2R1VII3FormController,
  'V.I.I 1 - Leitura 3 - Linha 2': termohigrometroA2R2VII1FormController,
  'V.I.I 2 - Leitura 3 - Linha 2': termohigrometroA2R2VII2FormController,
  'V.I.I 3 - Leitura 3 - Linha 2': termohigrometroA2R2VII3FormController,
  'V.I.I 1 - Leitura 3 - Linha 3': termohigrometroA2R3VII1FormController,
  'V.I.I 2 - Leitura 3 - Linha 3': termohigrometroA2R3VII2FormController,
  'V.I.I 3 - Leitura 3 - Linha 3': termohigrometroA2R3VII3FormController,
  'V.I.I 1 - Leitura 3 - Linha 4': termohigrometroA2R4VII1FormController,
  'V.I.I 2 - Leitura 3 - Linha 4': termohigrometroA2R4VII2FormController,
  'V.I.I 3 - Leitura 3 - Linha 4': termohigrometroA2R4VII3FormController,
  'V.I.I 1 - Leitura 3 - Linha 5': termohigrometroA2R5VII1FormController,
  'V.I.I 2 - Leitura 3 - Linha 5': termohigrometroA2R5VII2FormController,
  'V.I.I 3 - Leitura 3 - Linha 5': termohigrometroA2R5VII3FormController,
};

final escalaStartTempInFormController = TextEditingController();
final escalaEndTempInFormController = TextEditingController();
final faixaStartTempInFormController = TextEditingController();
final faixaEndTempInFormController = TextEditingController();
final divisaoTempInFormController = TextEditingController();
final escalaStartTempOutFormController = TextEditingController();
final escalaEndTempOutFormController = TextEditingController();
final faixaStartTempOutFormController = TextEditingController();
final faixaEndTempOutFormController = TextEditingController();
final divisaoTempOutFormController = TextEditingController();
final escalaStartURFormController = TextEditingController();
final escalaEndURFormController = TextEditingController();
final faixaStartURFormController = TextEditingController();
final faixaEndURFormController = TextEditingController();
final divisaoURFormController = TextEditingController();
final termohigrometroVCC1FormController = TextEditingController();
final termohigrometroVCC2FormController = TextEditingController();
final termohigrometroVCC3FormController = TextEditingController();
final termohigrometroVCC4FormController = TextEditingController();
final termohigrometroVCC5FormController = TextEditingController();
final termohigrometroR1VII1FormController = TextEditingController();
final termohigrometroR1VII2FormController = TextEditingController();
final termohigrometroR1VII3FormController = TextEditingController();
final termohigrometroR2VII1FormController = TextEditingController();
final termohigrometroR2VII2FormController = TextEditingController();
final termohigrometroR2VII3FormController = TextEditingController();
final termohigrometroR3VII1FormController = TextEditingController();
final termohigrometroR3VII2FormController = TextEditingController();
final termohigrometroR3VII3FormController = TextEditingController();
final termohigrometroR4VII1FormController = TextEditingController();
final termohigrometroR4VII2FormController = TextEditingController();
final termohigrometroR4VII3FormController = TextEditingController();
final termohigrometroR5VII1FormController = TextEditingController();
final termohigrometroR5VII2FormController = TextEditingController();
final termohigrometroR5VII3FormController = TextEditingController();
final termohigrometroA1VCC1FormController = TextEditingController();
final termohigrometroA1VCC2FormController = TextEditingController();
final termohigrometroA1VCC3FormController = TextEditingController();
final termohigrometroA1VCC4FormController = TextEditingController();
final termohigrometroA1VCC5FormController = TextEditingController();
final termohigrometroA1R1VII1FormController = TextEditingController();
final termohigrometroA1R1VII2FormController = TextEditingController();
final termohigrometroA1R1VII3FormController = TextEditingController();
final termohigrometroA1R2VII1FormController = TextEditingController();
final termohigrometroA1R2VII2FormController = TextEditingController();
final termohigrometroA1R2VII3FormController = TextEditingController();
final termohigrometroA1R3VII1FormController = TextEditingController();
final termohigrometroA1R3VII2FormController = TextEditingController();
final termohigrometroA1R3VII3FormController = TextEditingController();
final termohigrometroA1R4VII1FormController = TextEditingController();
final termohigrometroA1R4VII2FormController = TextEditingController();
final termohigrometroA1R4VII3FormController = TextEditingController();
final termohigrometroA1R5VII1FormController = TextEditingController();
final termohigrometroA1R5VII2FormController = TextEditingController();
final termohigrometroA1R5VII3FormController = TextEditingController();
final termohigrometroA2VCC1FormController = TextEditingController();
final termohigrometroA2VCC2FormController = TextEditingController();
final termohigrometroA2VCC3FormController = TextEditingController();
final termohigrometroA2VCC4FormController = TextEditingController();
final termohigrometroA2VCC5FormController = TextEditingController();
final termohigrometroA2R1VII1FormController = TextEditingController();
final termohigrometroA2R1VII2FormController = TextEditingController();
final termohigrometroA2R1VII3FormController = TextEditingController();
final termohigrometroA2R2VII1FormController = TextEditingController();
final termohigrometroA2R2VII2FormController = TextEditingController();
final termohigrometroA2R2VII3FormController = TextEditingController();
final termohigrometroA2R3VII1FormController = TextEditingController();
final termohigrometroA2R3VII2FormController = TextEditingController();
final termohigrometroA2R3VII3FormController = TextEditingController();
final termohigrometroA2R4VII1FormController = TextEditingController();
final termohigrometroA2R4VII2FormController = TextEditingController();
final termohigrometroA2R4VII3FormController = TextEditingController();
final termohigrometroA2R5VII1FormController = TextEditingController();
final termohigrometroA2R5VII2FormController = TextEditingController();
final termohigrometroA2R5VII3FormController = TextEditingController();