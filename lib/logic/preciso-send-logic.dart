//---------------------------------------------------------------------------------//
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:precisometrologia_app/logic/preciso-id-logic.dart';
import 'package:precisometrologia_app/preciso-login/preciso-login-globals.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basic-padroes.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basic-raw-data.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-model-wrappers/preciso-model-globals.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
//---------------------------------------------------------------------------------//
var exportInstrumentoData;
var exportRawData2 = {};
var exportRawData3 = {};

Map<String, dynamic> dataGeneral = {
  'Empresa':          empresaFormController.text,
  'Endereço':         enderecoFormController.text,
  'Cidade c/ Estado': cidadeEstadoFormController.text,
  'Equipamento':      equipFormController.text,
};

Map<String, dynamic> dataAdicional = {
  'Local da Calibração':                        localFormController.text,
  'Temperatura do Local da Calibração':         tempEndFormController.text,
  'Umidade Relativa do Local da Calibração':    umidadeEndFormController.text,
  'Próxima Data de Calibração':                 diaProximaCalibracaoFormController.text,
};

Map<String, dynamic> dataInstrumento = {
  'Marca do Instrumento':                       marcaFormController.text,
  'Modelo do Instrumento':                      modeloFormController.text,
  'Número de Série do Instrumento':             numeroSerieFormController.text,
  'Identificação do Instrumento':               identificacaoFormController.text,
  'Classe do Instrumento':                      instrumentoTipo,
};

Map<String, dynamic> dataTermohigrometro = {
  'Tipo de Instrumento':                              "Termohigrometro",
  'Grandeza':                                          "°C",
  'Instrumento':                                      selectedInstrumento,
  'Temperatura de Entrada - Inicio de Escala':        escalaStartTempInFormController.text,
  'Temperatura de Entrada - Final de Escala':         escalaEndTempInFormController.text,
  'Temperatura de Entrada - Inicio da Faixa de Uso':  faixaStartTempInFormController.text,
  'Temperatura de Entrada - Final da Faixa de Uso':   faixaEndTempInFormController.text,
  'Temperatura de Entrada - Valor de uma Divisão':    divisaoTempInFormController.text,
  'Temperatura de Saida - Inicio de Escala':          escalaStartTempOutFormController.text,
  'Temperatura de Saida - Final de Escala':           escalaEndTempOutFormController.text,
  'Temperatura de Saida - Inicio da Faixa de Uso':    faixaStartTempOutFormController.text,
  'Temperatura de Saida - Final da Faixa de Uso':     faixaEndTempOutFormController.text,
  'Temperatura de Saida - Valor de uma Divisão':      divisaoTempOutFormController.text,
  'Umidade Relativa - Inicio de Escala':              escalaStartURFormController.text,
  'Umidade Relativa - Final de Escala':               escalaEndURFormController.text,
  'Umidade Relativa - Inicio da Faixa de Uso':        faixaStartURFormController.text,
  'Umidade Relativa - Final da Faixa de Uso':         faixaEndURFormController.text,
  'Umidade Relativa - Valor de uma Divisão':          divisaoURFormController.text,
};

Map<String, dynamic> dataVidraria = {
  'Tipo de Instrumento':                              "Vidraria Graduada",
  'Grandeza':                                          "uL",
  'Instrumento':                                       selectedInstrumento,
  'Inicio da Faixa de Uso':                            faixaStartFormController.text,
  'Final da Faixa de Uso':                             faixaEndFormController.text,
  'Valor de uma Divisão':                              divisaoFormController.text,
  'Pressão Atmosférica':                               pressaoFormController.text,
  'Volume Nominal':                                    volumeFormController.text,
};

Map<String, dynamic> dataManometro = {
  'Tipo de Instrumento':                              "Medidor de Pressão",
  'Grandeza':                                          selectedGrandeza,
  'Instrumento':                                       selectedInstrumento,
  'Inicio da Faixa de Uso':                            faixaStartFormController.text,
  'Final da Faixa de Uso':                             faixaEndFormController.text,
  'Valor de uma Divisão':                              divisaoFormController.text,
};

Map<String, dynamic> dataRaw1 = {
  'V.C.C 1 - Primeira Leitura':                          vcc11FormController.text,
  'V.I.I 1.1 - Primeira Leitura':                        vcc1Vii11FormController.text,
  'V.I.I 1.2 - Primeira Leitura':                        vcc1Vii21FormController.text,
  'V.I.I 1.3 - Primeira Leitura':                        vcc1Vii31FormController.text,
  'V.C.C 1 - Incerteza - Primeira Leitura':              vcc11IncertezaFormController.text,

  'V.C.C 2 - Primeira Leitura':                          vcc21FormController.text,
  'V.I.I 2.1 - Primeira Leitura':                        vcc2Vii11FormController.text,
  'V.I.I 2.2 - Primeira Leitura':                        vcc2Vii21FormController.text,
  'V.I.I 2.3 - Primeira Leitura':                        vcc2Vii31FormController.text,
  'V.C.C 2 - Incerteza - Primeira Leitura':              vcc21IncertezaFormController.text,

  'V.C.C 3 - Primeira Leitura':                          vcc31FormController.text,
  'V.I.I 3.1 - Primeira Leitura':                        vcc3Vii11FormController.text,
  'V.I.I 3.2 - Primeira Leitura':                        vcc3Vii21FormController.text,
  'V.I.I 3.3 - Primeira Leitura':                        vcc3Vii31FormController.text,
  'V.C.C 3 - Incerteza - Primeira Leitura':              vcc31IncertezaFormController.text,

  'V.C.C 4 - Primeira Leitura':                          vcc41FormController.text,
  'V.I.I 4.1 - Primeira Leitura':                        vcc4Vii11FormController.text,
  'V.I.I 4.2 - Primeira Leitura':                        vcc4Vii21FormController.text,
  'V.I.I 4.3 - Primeira Leitura':                        vcc4Vii31FormController.text,
  'V.C.C 4 - Incerteza - Primeira Leitura':              vcc41IncertezaFormController.text,
};

Map<String, dynamic> dataRaw2 = {
  'V.C.C 1 - Segunda Leitura':                          vcc12FormController.text,
  'V.I.I 1.1 - Segunda Leitura':                        vcc1Vii12FormController.text,
  'V.I.I 1.2 - Segunda Leitura':                        vcc1Vii22FormController.text,
  'V.I.I 1.3 - Segunda Leitura':                        vcc1Vii32FormController.text,
  'V.C.C 1 - Incerteza - Segunda Leitura':              vcc12IncertezaFormController.text,

  'V.C.C 2 - Segunda Leitura':                          vcc22FormController.text,
  'V.I.I 2.1 - Segunda Leitura':                        vcc2Vii12FormController.text,
  'V.I.I 2.2 - Segunda Leitura':                        vcc2Vii22FormController.text,
  'V.I.I 2.3 - Segunda Leitura':                        vcc2Vii32FormController.text,
  'V.C.C 2 - Incerteza - Segunda Leitura':              vcc22IncertezaFormController.text,

  'V.C.C 3 - Segunda Leitura':                          vcc32FormController.text,
  'V.I.I 3.1 - Segunda Leitura':                        vcc3Vii12FormController.text,
  'V.I.I 3.2 - Segunda Leitura':                        vcc3Vii22FormController.text,
  'V.I.I 3.3 - Segunda Leitura':                        vcc3Vii32FormController.text,
  'V.C.C 3 - Incerteza - Segunda Leitura':              vcc32IncertezaFormController.text,

  'V.C.C 4 - Segunda Leitura':                          vcc42FormController.text,
  'V.I.I 4.1 - Segunda Leitura':                        vcc4Vii12FormController.text,
  'V.I.I 4.2 - Segunda Leitura':                        vcc4Vii22FormController.text,
  'V.I.I 4.3 - Segunda Leitura':                        vcc4Vii32FormController.text,
  'V.C.C 4 - Incerteza - Segunda Leitura':              vcc42IncertezaFormController.text,
};

Map<String, dynamic> dataRaw3 = {
  'V.C.C 1 - Terceira Leitura':                          vcc13FormController.text,
  'V.I.I 1.1 - Terceira Leitura':                        vcc1Vii13FormController.text,
  'V.I.I 1.2 - Terceira Leitura':                        vcc1Vii23FormController.text,
  'V.I.I 1.3 - Terceira Leitura':                        vcc1Vii33FormController.text,
  'V.C.C 1 - Incerteza - Terceira Leitura':              vcc13IncertezaFormController.text,

  'V.C.C 2 - Terceira Leitura':                          vcc23FormController.text,
  'V.I.I 2.1 - Terceira Leitura':                        vcc2Vii13FormController.text,
  'V.I.I 2.2 - Terceira Leitura':                        vcc2Vii23FormController.text,
  'V.I.I 2.3 - Terceira Leitura':                        vcc2Vii33FormController.text,
  'V.C.C 2 - Incerteza - Terceira Leitura':              vcc23IncertezaFormController.text,

  'V.C.C 3 - Terceira Leitura':                          vcc33FormController.text,
  'V.I.I 3.1 - Terceira Leitura':                        vcc3Vii13FormController.text,
  'V.I.I 3.2 - Terceira Leitura':                        vcc3Vii23FormController.text,
  'V.I.I 3.3 - Terceira Leitura':                        vcc3Vii33FormController.text,
  'V.C.C 3 - Incerteza - Terceira Leitura':              vcc33IncertezaFormController.text,

  'V.C.C 4 - Terceira Leitura':                          vcc43FormController.text,
  'V.I.I 4.1 - Terceira Leitura':                        vcc4Vii13FormController.text,
  'V.I.I 4.2 - Terceira Leitura':                        vcc4Vii23FormController.text,
  'V.I.I 4.3 - Terceira Leitura':                        vcc4Vii33FormController.text,
  'V.C.C 4 - Incerteza - Terceira Leitura':              vcc43IncertezaFormController.text,
};

Map<String, dynamic> dataPadrao = {
  'Padrão':          selectedPadrao,
};

Future<Null> sendFirebaseData(var selectedModel) async {
      // Informações Especificas
      switch (selectedModel){
        case '1':
        exportInstrumentoData = dataTermohigrometro;
        break;
        case '2':
        exportInstrumentoData = dataVidraria;
        break;
        case '3':
        exportInstrumentoData = dataManometro;
        break;
      }

      if (isSecondReadingEnabled == true)
      {exportRawData2 = dataRaw2;}
      else {exportRawData2 = dataRaw1;}

      if (isThirdReadingEnabled == true)
      {exportRawData3 = dataRaw3;}
      else {exportRawData3 = dataRaw1;}

      var certID = await getIDCertificado();

      Map<String, dynamic> dataHeader = {
        'ID':                certID,
        'PrecisoID':         getPrecisoID(),
        'Mês':               nowMonth,
        'Ano':               nowYear,
        'Incremental':       savedIncremental,
        'isUsingRawData2':   isSecondReadingEnabled.toString(),
        'isUsingRawData3':   isThirdReadingEnabled.toString(),
        };

      Map<String, dynamic> finalDataMap = {}..addAll(dataGeneral)..addAll(exportInstrumentoData)..addAll(dataInstrumento)
                                          ..addAll(dataRaw1)..addAll(exportRawData2)..addAll(exportRawData3)..addAll(dataPadrao)
                                          ..addAll(dataAdicional)..addAll(dataHeader);

      await Firestore.instance
      .collection('preciso-certificados')
      .document((certID.toString()))
      .setData(finalDataMap);
}