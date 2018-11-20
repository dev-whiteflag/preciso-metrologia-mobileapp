//---------------------------------------------------------------------------------//
library precisometrologia_app.basicmodel.globals;
//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
//---------------------------------------------------------------------------------//
// VAR LIST - VÁRIAVEIS GLOBAIS DO MODELO
//---------------------------------------------------------------------------------//

var selectedModel = '0';
var selectionGrandeza = '0';
var selectedGrandeza = '0';
var selectionClasse = '0';
var selectedClasse = '0';

// TextControllers

// -- Gerais
final empresaFormController = TextEditingController();
final enderecoFormController = TextEditingController();
final cidadeEstadoFormController = TextEditingController();
final equipFormController = TextEditingController();

// -- Adicionais
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

// -- VidrariaGraduada
final pressaoFormController = TextEditingController();
final volumeFormController = TextEditingController();
final faixaStartFormController = TextEditingController();
final faixaEndFormController = TextEditingController();
final divisaoFormController = TextEditingController();

// -- Instrumento Ambiente - IN
final escalaStartTempInFormController = TextEditingController();
final escalaEndTempInFormController = TextEditingController();
final faixaStartTempInFormController = TextEditingController();
final faixaEndTempInFormController = TextEditingController();
final divisaoTempInFormController = TextEditingController();

// -- Instrumento Ambiente - OUT
final escalaStartTempOutFormController = TextEditingController();
final escalaEndTempOutFormController = TextEditingController();
final faixaStartTempOutFormController = TextEditingController();
final faixaEndTempOutFormController = TextEditingController();
final divisaoTempOutFormController = TextEditingController();

// -- Instrumento Ambiente - UR
final escalaStartURFormController = TextEditingController();
final escalaEndURFormController = TextEditingController();
final faixaStartURFormController = TextEditingController();
final faixaEndURFormController = TextEditingController();
final divisaoURFormController = TextEditingController();

// -- Dados Brutos - Primeira Leitura
final vcc11FormController = TextEditingController();
final vcc1Vii11FormController = TextEditingController();
final vcc1Vii21FormController = TextEditingController();
final vcc1Vii31FormController = TextEditingController();
final vcc11IncertezaFormController = TextEditingController();

final vcc21FormController = TextEditingController();
final vcc2Vii11FormController = TextEditingController();
final vcc2Vii21FormController = TextEditingController();
final vcc2Vii31FormController = TextEditingController();
final vcc21IncertezaFormController = TextEditingController();

final vcc31FormController = TextEditingController();
final vcc3Vii11FormController = TextEditingController();
final vcc3Vii21FormController = TextEditingController();
final vcc3Vii31FormController = TextEditingController();
final vcc31IncertezaFormController = TextEditingController();

final vcc41FormController = TextEditingController();
final vcc4Vii11FormController = TextEditingController();
final vcc4Vii21FormController = TextEditingController();
final vcc4Vii31FormController = TextEditingController();
final vcc41IncertezaFormController = TextEditingController();

// -- Dados Brutos - Segunda Leitura
final vcc12FormController = TextEditingController();
final vcc1Vii12FormController = TextEditingController();
final vcc1Vii22FormController = TextEditingController();
final vcc1Vii32FormController = TextEditingController();
final vcc12IncertezaFormController = TextEditingController();

final vcc22FormController = TextEditingController();
final vcc2Vii12FormController = TextEditingController();
final vcc2Vii22FormController = TextEditingController();
final vcc2Vii32FormController = TextEditingController();
final vcc22IncertezaFormController = TextEditingController();

final vcc32FormController = TextEditingController();
final vcc3Vii12FormController = TextEditingController();
final vcc3Vii22FormController = TextEditingController();
final vcc3Vii32FormController = TextEditingController();
final vcc32IncertezaFormController = TextEditingController();

final vcc42FormController = TextEditingController();
final vcc4Vii12FormController = TextEditingController();
final vcc4Vii22FormController = TextEditingController();
final vcc4Vii32FormController = TextEditingController();
final vcc42IncertezaFormController = TextEditingController();

// -- Dados Brutos - Terceira Leitura
final vcc13FormController = TextEditingController();
final vcc1Vii13FormController = TextEditingController();
final vcc1Vii23FormController = TextEditingController();
final vcc1Vii33FormController = TextEditingController();
final vcc13IncertezaFormController = TextEditingController();

final vcc23FormController = TextEditingController();
final vcc2Vii13FormController = TextEditingController();
final vcc2Vii23FormController = TextEditingController();
final vcc2Vii33FormController = TextEditingController();
final vcc23IncertezaFormController = TextEditingController();

final vcc33FormController = TextEditingController();
final vcc3Vii13FormController = TextEditingController();
final vcc3Vii23FormController = TextEditingController();
final vcc3Vii33FormController = TextEditingController();
final vcc33IncertezaFormController = TextEditingController();

final vcc43FormController = TextEditingController();
final vcc4Vii13FormController = TextEditingController();
final vcc4Vii23FormController = TextEditingController();
final vcc4Vii33FormController = TextEditingController();
final vcc43IncertezaFormController = TextEditingController();
