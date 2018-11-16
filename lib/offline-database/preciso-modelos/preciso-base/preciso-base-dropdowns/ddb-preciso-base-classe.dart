// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

var selectionTipo;

List<Map> precisoClasseInstrumento = [
  {"id": 0, "text": "Não se Aplica ao Instrumento"},
  {"id": 1, "text": "Analógico"},
  {"id": 2, "text": "Digital"},
];

class PrecisoBaseDropdownClasse extends StatefulWidget {
  @override
  PrecisoBaseDropdownClasseState createState() => PrecisoBaseDropdownClasseState();
}

class PrecisoBaseDropdownClasseState extends State<PrecisoBaseDropdownClasse> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Divider(),
      Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: new DropdownButton<String>(
            isDense: false,
            isExpanded: true,
            hint: new Text("Selecione a Classe de Instrumento"),
            value: selectionTipo,
            onChanged: (String newValue) {
              setState(() {
                selectionTipo = newValue;
                
                switch(selectionTipo){
                  case '1':
                  instrumentoTipo = "Analógico";
                  break;
                  case '2':
                  instrumentoTipo = "Digital";
                  break;
                  default:
                  instrumentoTipo = "Não Especificado ou Não se Aplica ao Instrumento";
                  break;
                }

              });
              print("Tipo de Instrumento: " + instrumentoTipo);
            },
            items: precisoClasseInstrumento.map((Map map) {
              return new DropdownMenuItem<String>(
                value: map["id"].toString(),
                child: new Text(
                  map["text"],
                ),
              );
            }).toList(),
          )),
          Divider(),
    ]);
  }
}
