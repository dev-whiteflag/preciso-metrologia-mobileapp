// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
// ------------------------------------------------------------------------ //
var selectionPadrao;
var selectedPadrao;

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
                  value: selectionPadrao,
                  onChanged: (String newValue) {
                    setState(() {
                      selectionPadrao = newValue;
                    });
                    print("Padrão: " + selectionPadrao);
                  },
                  items: precisoPadroes.map((Map map) {
                    selectedPadrao = map["text"];
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