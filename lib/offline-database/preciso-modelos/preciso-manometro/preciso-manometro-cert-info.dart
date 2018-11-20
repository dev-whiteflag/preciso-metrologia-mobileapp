// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

List<Map> precisoInstrumentoManometroGrandeza = [
  {"id": 0, "text": "<Grandeza Debug>"},
  {"id": 1, "text": "cmHg"},
  {"id": 2, "text": "mmHg"},
  {"id": 3, "text": "hPa"},
  {"id": 4, "text": "MPa"},
];

List<Map> precisoInstrumentoPressaoClasse = [
  {"id": 0, "text": "Nenhuma Classe Especificada"},
  {"id": 1, "text": "A4"},
  {"id": 2, "text": "A3"},
  {"id": 3, "text": "A2"},
  {"id": 4, "text": "A1"},
  {"id": 5, "text": "A"},
  {"id": 6, "text": "B"},
  {"id": 7, "text": "C"},
  {"id": 8, "text": "D"},
];

class PrecisoManometroCertInfo extends StatefulWidget {
  @override
  PrecisoManometroCertInfoState createState() =>
      PrecisoManometroCertInfoState();
}

class PrecisoManometroCertInfoState extends State<PrecisoManometroCertInfo> {
  updateWrapper() {
    setState(() {});
  }

  fetchGrandeza() {
    switch (selectionGrandeza) {
      case '1':
        selectedGrandeza = "cmHg";
        return selectedGrandeza;
        break;
      case '2':
        selectedGrandeza = "mmHg";
        return selectedGrandeza;
        break;
      case '3':
        selectedGrandeza = "hPa";
        return selectedGrandeza;
        break;
      case '4':
        selectedGrandeza = "MPa";
        return selectedGrandeza;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: instrumentoInfoKey,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
                child: Text(
                  'Informações Especificas',
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
                )),
            Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new DropdownButton<String>(
                  isDense: false,
                  isExpanded: true,
                  hint: new Text("Selecione o Tipo de Instrumento"),
                  value: selectionGrandeza,
                  onChanged: (String newValue) {
                    setState(() {
                      selectionGrandeza = newValue;
                    });
                    updateWrapper();
                    print("Tipo de Instrumento: " + selectionGrandeza);
                  },
                  items: precisoInstrumentoManometroGrandeza.map((Map map) {
                    selectedGrandeza = map["text"];
                    return new DropdownMenuItem<String>(
                      value: map["id"].toString(),
                      child: new Text(
                        map["text"],
                      ),
                    );
                  }).toList(),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new DropdownButton<String>(
                  isDense: false,
                  isExpanded: true,
                  hint: new Text("Selecione a Classe do Instrumento"),
                  value: selectionClasse,
                  onChanged: (String newValue) {
                    setState(() {
                      selectionClasse = newValue;
                    });
                    updateWrapper();
                    print("Classe do Instrumento: " + selectionClasse);
                  },
                  items: precisoInstrumentoPressaoClasse.map((Map map) {
                    return new DropdownMenuItem<String>(
                      value: map["id"].toString(),
                      child: new Text(
                        map["text"],
                      ),
                    );
                  }).toList(),
                )),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(
                    child: TextFormField(
                  controller: escalaStartFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Inicio da Escala";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Inicio da Escala",
                    suffixText: fetchGrandeza(),
                    border: OutlineInputBorder(),
                  ),
                )),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Text(
                      'a',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 20.0),
                    )),
                Expanded(
                    child: TextFormField(
                  controller: escalaEndFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Final da Escala";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Final da Escala",
                    suffixText: fetchGrandeza(),
                    border: OutlineInputBorder(),
                  ),
                )),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(
                    child: TextFormField(
                  controller: faixaStartFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Inicio da Faixa de Uso";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Inicio da Faixa de Uso",
                    suffixText: fetchGrandeza(),
                    border: OutlineInputBorder(),
                  ),
                )),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Text(
                      'a',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 20.0),
                    )),
                Expanded(
                    child: TextFormField(
                  controller: faixaEndFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Final da Faixa de Uso";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Final da Faixa de Uso",
                    suffixText: fetchGrandeza(),
                    border: OutlineInputBorder(),
                  ),
                )),
              ],
            ),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 5.0),
                child: TextFormField(
                  controller: divisaoFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Valor de uma Divisão";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Valor de uma Divisão",
                    suffixText: fetchGrandeza(),
                    border: OutlineInputBorder(),
                  ),
                )),
            Divider(),
          ],
        ));
  }
}
