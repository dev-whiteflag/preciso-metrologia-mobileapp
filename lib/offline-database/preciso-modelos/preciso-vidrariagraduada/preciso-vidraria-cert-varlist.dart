//---------------------------------------------------------------------------------//
library precisometrologia_app.vidraria.cert.globals;
//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-model-wrappers/preciso-model-globals.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
//---------------------------------------------------------------------------------//
// VAR LIST - VÁRIAVEIS GLOBAIS DO MODELO
//---------------------------------------------------------------------------------//

// DataMap for Vidraria
Map<String, dynamic> dataMapPrecisoVidrariaGraduada = {
  'Tipo de Instrumento':                              "Vidraria Graduada",
  'Grandeza':                                          "uL",
  'Instrumento':                                       selectedInstrumento,

  'Inicio da Faixa de Uso':                            faixaStartFormController.text,
  'Final da Faixa de Uso':                             faixaEndFormController.text,
  'Valor de uma Divisão':                              divisaoFormController.text,
  'Pressão Atmosférica':                               pressaoFormController.text,
  'Volume Nominal':                                    volumeFormController.text,

  'V.I.I 1':                                           vidrariaVII1FormController,
  'V.I.I 2':                                           vidrariaVII2FormController,
  'V.I.I 3':                                           vidrariaVII3FormController,
  'V.I.I 4':                                           vidrariaVII4FormController,
  'V.I.I 5':                                           vidrariaVII5FormController,

  'V.V.C 1 - Linha 1':                                vidrariaR1VCC1FormController,
  'V.V.C 2 - Linha 1':                                vidrariaR1VCC2FormController,
  'V.V.C 3 - Linha 1':                                vidrariaR1VCC3FormController,

  'V.V.C 1 - Linha 2':                                vidrariaR2VCC1FormController,
  'V.V.C 2 - Linha 2':                                vidrariaR2VCC2FormController,
  'V.V.C 3 - Linha 2':                                vidrariaR2VCC3FormController,

  'V.V.C 1 - Linha 3':                                vidrariaR3VCC1FormController,
  'V.V.C 2 - Linha 3':                                vidrariaR3VCC2FormController,
  'V.V.C 3 - Linha 3':                                vidrariaR3VCC3FormController,

  'V.V.C 1 - Linha 4':                                vidrariaR4VCC1FormController,
  'V.V.C 2 - Linha 4':                                vidrariaR4VCC2FormController,
  'V.V.C 3 - Linha 4':                                vidrariaR4VCC3FormController,

  'V.V.C 1 - Linha 5':                                vidrariaR5VCC1FormController,
  'V.V.C 2 - Linha 5':                                vidrariaR5VCC2FormController,
  'V.V.C 3 - Linha 5':                                vidrariaR5VCC3FormController,
};

// Text Controllers for Data
  // -- V.I.I's
var vidrariaVII1FormController = TextEditingController();
var vidrariaVII2FormController = TextEditingController();
var vidrariaVII3FormController = TextEditingController();
var vidrariaVII4FormController = TextEditingController();
var vidrariaVII5FormController = TextEditingController();

  // -- V.C.C - Linha 1
var vidrariaR1VCC1FormController = TextEditingController();
var vidrariaR1VCC2FormController = TextEditingController();
var vidrariaR1VCC3FormController = TextEditingController();

  // -- V.C.C - Linha 2
var vidrariaR2VCC1FormController = TextEditingController();
var vidrariaR2VCC2FormController = TextEditingController();
var vidrariaR2VCC3FormController = TextEditingController();

  // -- V.C.C - Linha 3
var vidrariaR3VCC1FormController = TextEditingController();
var vidrariaR3VCC2FormController = TextEditingController();
var vidrariaR3VCC3FormController = TextEditingController();

  // -- V.C.C - Linha 4
var vidrariaR4VCC1FormController = TextEditingController();
var vidrariaR4VCC2FormController = TextEditingController();
var vidrariaR4VCC3FormController = TextEditingController();

  // -- V.C.C - Linha 5
var vidrariaR5VCC1FormController = TextEditingController();
var vidrariaR5VCC2FormController = TextEditingController();
var vidrariaR5VCC3FormController = TextEditingController();



