//---------------------------------------------------------------------------------//
library precisometrologia_app.basicmodel.globals;
//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
//---------------------------------------------------------------------------------//
// VAR LIST - VÁRIAVEIS GLOBAIS DO MODELO
//---------------------------------------------------------------------------------//

var selectedModel = '0';
var selectedInstrumento = '0';
var selectionGrandeza = '0';
var selectedGrandeza = '0';
var selectionClasse = '0';
var selectedClasse = '0';
var selectionPadrao1 = '0';
var selectionPadrao2 = '0';
var selectionPadrao3 = '0';
var selectedPadrao1 = '0';
var selectedPadrao2 = '0';
var selectedPadrao3 = '0';

// TextControllers

// -- Gerais
final empresaFormController = TextEditingController();
final enderecoFormController = TextEditingController();
final cidadeEstadoFormController = TextEditingController();
final equipFormController = TextEditingController();

// -- Adicionais I
final localFormController = TextEditingController();
final tempEndFormController = TextEditingController();
final umidadeEndFormController = TextEditingController();
final diaProximaCalibracaoFormController = TextEditingController();

// -- Instrumento
final marcaFormController = TextEditingController();
final modeloFormController = TextEditingController();
final numeroSerieFormController = TextEditingController();
final identificacaoFormController = TextEditingController();
var instrumentoTipo;

// -- Adicional II
final pressaoFormController = TextEditingController();
final volumeFormController = TextEditingController();
final faixaStartFormController = TextEditingController();
final faixaEndFormController = TextEditingController();
final divisaoFormController = TextEditingController();
final escalaStartFormController = TextEditingController();
final escalaEndFormController = TextEditingController();

// -- Temperatura IN
final escalaStartTempInFormController = TextEditingController();
final escalaEndTempInFormController = TextEditingController();
final faixaStartTempInFormController = TextEditingController();
final faixaEndTempInFormController = TextEditingController();
final divisaoTempInFormController = TextEditingController();

// -- Temperatura OUT
final escalaStartTempOutFormController = TextEditingController();
final escalaEndTempOutFormController = TextEditingController();
final faixaStartTempOutFormController = TextEditingController();
final faixaEndTempOutFormController = TextEditingController();
final divisaoTempOutFormController = TextEditingController();

// -- Umidade Relativa
final escalaStartURFormController = TextEditingController();
final escalaEndURFormController = TextEditingController();
final faixaStartURFormController = TextEditingController();
final faixaEndURFormController = TextEditingController();
final divisaoURFormController = TextEditingController();