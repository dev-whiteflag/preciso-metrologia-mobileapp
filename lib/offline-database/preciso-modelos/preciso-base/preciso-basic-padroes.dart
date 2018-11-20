// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
// ------------------------------------------------------------------------ //
var selectionPadrao1 = '0';
var selectionPadrao2 = '0';
var selectionPadrao3 = '0';
var selectedPadrao1 = '0';
var selectedPadrao2 = '0';
var selectedPadrao3 = '0';

List<Map> precisoPadroes = [
  {"id": 0, "text": "Nenhum Padrão Especificado"},
  {"id": 1, "text": "Termohigrômetro Padrão THM002 RBC Nº T0570-2011"},
  {"id": 2, "text": "Termohigrometro ME-INS-THM001 NIST No.19060803"},
];

class PrecisoBasePadroesDropdown extends StatefulWidget {
  @override
  PrecisoBasePadroesDropdownState createState() =>
      PrecisoBasePadroesDropdownState();
}

class PrecisoBasePadroesDropdownState
    extends State<PrecisoBasePadroesDropdown> {

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new DropdownButton<String>(
                  isDense: false,
                  isExpanded: true,
                  hint: new Text("Selecione um Padrão"),
                  value: selectionPadrao1,
                  onChanged: (String newValue) {
                    setState(() {
                      selectionPadrao1 = newValue;
                    });
                    print("Padrão: " + selectionPadrao1);
                  },
                  items: precisoPadroes.map((Map map) {
                    selectedPadrao1 = map["text"];
                    return new DropdownMenuItem<String>(
                      value: map["id"].toString(),
                      child: new Text(
                        map["text"],
                      ),
                    );
                  }).toList(),
                )),
                 Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new DropdownButton<String>(
                  isDense: false,
                  isExpanded: true,
                  hint: new Text("Selecione um Padrão"),
                  value: selectionPadrao2,
                  onChanged: (String newValue) {
                    setState(() {
                      selectionPadrao2 = newValue;
                    });
                    print("Padrão: " + selectionPadrao2);
                  },
                  items: precisoPadroes.map((Map map) {
                    selectedPadrao2 = map["text"];
                    return new DropdownMenuItem<String>(
                      value: map["id"].toString(),
                      child: new Text(
                        map["text"],
                      ),
                    );
                  }).toList(),
                )),
                 Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new DropdownButton<String>(
                  isDense: false,
                  isExpanded: true,
                  hint: new Text("Selecione um Padrão"),
                  value: selectionPadrao3,
                  onChanged: (String newValue) {
                    setState(() {
                      selectionPadrao3 = newValue;
                    });
                    print("Padrão: " + selectionPadrao3);
                  },
                  items: precisoPadroes.map((Map map) {
                    selectedPadrao3 = map["text"];
                    return new DropdownMenuItem<String>(
                      value: map["id"].toString(),
                      child: new Text(
                        map["text"],
                      ),
                    );
                  }).toList(),
                )),
          ]);
  }
}