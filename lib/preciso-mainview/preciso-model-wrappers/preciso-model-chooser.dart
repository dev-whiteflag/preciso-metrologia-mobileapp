// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
// ------------------------------------------------------------------------ //
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-termohigrometro/preciso-termohigrometro-cert-info.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-vidrariagraduada/preciso-vidraria-cert-info.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-medidorpressao/preciso-medidorpressao-cert-info-5.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-medidorpressao/preciso-medidorpressao-cert-info-10.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';

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
  {"id": 1, "text": "Incluso Sensor Interno e Externo"},
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
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    margin: EdgeInsets.only(right: 5.0),
                    child: Icon(Icons.info)),
                Text(
                  'Nenhum Instrumento Selecionado',
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
                ),
              ])),
        ]);
        break;

      case '1':
        return PrecisoTermohigrometroCertInfo();
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
                    selectedModel = newValue;
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
          padding:
              EdgeInsets.only(right: 10.0, left: 10.0, top: 10, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey)),
          child: fetchInstrumentoType(),
        ),
      ]),
    ]);
  }
}
