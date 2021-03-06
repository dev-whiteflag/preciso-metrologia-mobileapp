//---------------------------------------------------------------------------------//
import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'package:precisometrologia_app/logic/preciso-id-logic.dart';
import 'package:precisometrologia_app/preciso-login/preciso-login-globals.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-termohigrometro/preciso-termohigrometro-cert-varlist.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-medidorpressao/preciso-medidorpressao-cert-varlist.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-vidrariagraduada/preciso-vidraria-cert-varlist.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
//---------------------------------------------------------------------------------//

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

Map<String, dynamic> dataPadrao = {
  'Padrão 1':          selectedPadrao1,
  'Padrão 2':          selectedPadrao2,
  'Padrão 3':          selectedPadrao3,
};

Map<String, dynamic> returnActiveInstrument(){
  switch (selectedModel){
        case '1':

          switch (selectionLeitura) {
            case '1':
              return dataMapPrecisoTermohigrometro1Leitura;
              break;
            case '2':
              return dataMapPrecisoTermohigrometro2Leitura;
              break;
            case '3':
              return dataMapPrecisoTermohigrometro3Leitura;
              break;
          }
        break;

        case '2':
        return dataMapPrecisoVidrariaGraduada;
        break;
        case '3':
        return dataMapPrecisoMedidorPressao5Leituras;
        break;
        case '4':
        return dataMapPrecisoMedidorPressao10Leituras;
        break;
      }
}

checkInternetConnection() async{
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
    internetConnection = true;
    print('Internet Connection = true');
    return true;
    }
  } on SocketException catch (_) {
    internetConnection = false;
    print('Internet Connection = false');
    return false;
  }
}

Future<Null> sendFirebaseData(var selectedModel) async {
    
    Firestore.instance.enablePersistence(true);
    var certID = await getIDCertificado();
    var exportedInstrumentData = returnActiveInstrument();

    var dateTime = new DateTime.now();
    var nowHour = new DateFormat('kk:mm:ss').format(dateTime);

      Map<String, dynamic> dataHeader = {
        'ID':                certID,
        'PrecisoID':         getPrecisoID(),
        'Mês':               nowMonth,
        'Ano':               nowYear,
        'Data de Calibração': (nowDay + "/" + nowMonth + "/" + nowYear),
        'Incremental':       savedIncremental,
        'Hora do Envio':     nowHour,
        };

      Map<String, dynamic> finalDataMap = {}..addAll(dataGeneral)..addAll(exportedInstrumentData)
                                          ..addAll(dataInstrumento)..addAll(dataPadrao)
                                          ..addAll(dataAdicional)..addAll(dataHeader);

      Firestore.instance.collection('preciso-certificados').document((certID.toString()))
          .setData(finalDataMap);
}