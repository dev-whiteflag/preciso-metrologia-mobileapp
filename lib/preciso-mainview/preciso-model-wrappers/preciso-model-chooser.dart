// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
// ------------------------------------------------------------------------ //
import 'package:precisometrologia_app/preciso-mainview/preciso-model-wrappers/preciso-model-globals.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basic-cert-info.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-vidrariagraduada/preciso-vidraria-cert-info.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-medidorpressao/preciso-medidorpressao-cert-info-5.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-medidorpressao/preciso-medidorpressao-cert-info-10.dart';

//---------------------------------------------------------------------------------//
var selectionTipo = '0';
var selectionInstrumento = '0';

List<Map> precisoTipoInstrumento = [
  {"id": 0, "text": "Selecione um Tipo de Instrumento"},
  {"id": 1, "text": "Termohigrômetro"},
  {"id": 2, "text": "Vidraria Graduada"},
  {"id": 3, "text": "Medidor de Pressão - 5 Leituras"},
  {"id": 4, "text": "Medidor de Pressão - 10 Leituras"},
];

List<Map> precisoInstrumentoTermohigrometro = [
  {"id": 0, "text": "Selecione um Termohigrômetro"},
  {"id": 1, "text": "Termohigrômetro com Sensor Interno e Externo"},
];

List<Map> precisoInstrumentoVidrariaGraduada = [
  {"id": 0, "text": "Selecione uma Vidraria"},
  {"id": 1, "text": "Balão Graduado"},
  {"id": 2, "text": "Balde Graduado"},
  {"id": 3, "text": "Becker Graduado"},
  {"id": 4, "text": "Bureta Graduada"},
  {"id": 5, "text": "Cálice Graduado"},
  {"id": 6, "text": "Dispenser Graduado"},
  {"id": 7, "text": "Erlenmeyer Graduado"},
  {"id": 8, "text": "Pipeta Graduada"},
  {"id": 9, "text": "Pipetador Graduado"},
  {"id": 10, "text": "Proveta Graduada"},
  {"id": 11, "text": "Recipiente Graduado"},
  {"id": 12, "text": "Seringa Graduada"},
  {"id": 13, "text": "Titulador Graduado"},
];

List<Map> precisoInstrumentoManometro = [
  {"id": 0, "text": "<Instrumento Debug>"},
  {"id": 1, "text": "Manômetro"},
  {"id": 2, "text": "Vacuômetro"},
];

List<Map> precisoInstrumentoEmpty = [
  {"id": 0, "text": "Selecione um Instrumento Válido"},
];

class PrecisoModelDropdown extends StatefulWidget {
  @override
  PrecisoModelDropdownState createState() => PrecisoModelDropdownState();
}

class PrecisoModelDropdownState extends State<PrecisoModelDropdown> {
  initState() {
    setState(() {
      selectionInstrumento = '0';
      selectionTipo = '0';
    });
  }

  updateWrapper() {
    setState(() {});
  }

  fetchInstrumentoType() {
    switch (selectionTipo) {
      case '0':
        return Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Text(
              'Selecione um Instrumento',
              overflow: TextOverflow.clip,
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
            ),
          ),
        ]);
        break;

      case '1':
        return PrecisoBasicCertInfo();
        break;

      case '2':
        return PrecisoVidrariaCertInfo();
        break;

      case '3':
        return PrecisoMedidorPressao5CertInfo();
        break;

      case '4':
        return PrecisoMedidorPressao10CertInfo();
        break;

      default:
        return PrecisoBasicCertInfo();
        break;
    }
  }

  List<Map> fetchInstrumento() {
    switch (selectionTipo) {
      case '1':
        return precisoInstrumentoTermohigrometro;
        break;

      case '2':
        return precisoInstrumentoVidrariaGraduada;
        break;

      case '3':
        return precisoInstrumentoManometro;
        break;

      case '4':
        return precisoInstrumentoManometro;
        break;

      default:
        return precisoInstrumentoEmpty;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey)),
          child: Column(children: <Widget>[
            Container(
              child: new DropdownButton<String>(
                isDense: false,
                isExpanded: true,
                hint: new Text("Selecione o Tipo de Instrumento"),
                value: selectionTipo,
                onChanged: (String newValue) {
                  setState(() {
                    selectionTipo = newValue;
                    selectedFModel = newValue;
                    selectionInstrumento = '0';
                  });
                  updateWrapper();
                  print("Tipo de Instrumento: " + selectionTipo);
                },
                items: precisoTipoInstrumento.map((Map map) {
                  return new DropdownMenuItem<String>(
                    value: map["id"].toString(),
                    child: new Text(
                      map["text"],
                    ),
                  );
                }).toList(),
              ),
            ),
          isExpanded: true,
            Divider(),
            Container(
              margin: EdgeInsets.all(1.0),
              child: new DropdownButton<String>(
                isDense: false,
                isExpanded: true,
                hint: new Text("Selecione o Instrumento"),
                value: selectionInstrumento,
                onChanged: (String newValue) {
                  setState(() {
                    selectionInstrumento = newValue;
                  });
                  updateWrapper();
                  print("Instrumento: " + selectionInstrumento);
                },
                items: fetchInstrumento().map((Map map) {
                  selectedInstrumento = map["text"];
                  return new DropdownMenuItem<String>(
                    value: map["id"].toString(),
                    child: new Text(
                      map["text"],
                    ),
                  );
                }).toList(),
              ),
            ),
          ])),
      Divider(),
      Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey)),
          child: fetchInstrumentoType(),
        ),
      ]),
    ]);
  }
}
