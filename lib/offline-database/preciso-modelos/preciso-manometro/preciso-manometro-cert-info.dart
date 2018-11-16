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

class PrecisoManometroCertInfo extends StatefulWidget {
  @override
  PrecisoManometroCertInfoState createState() => PrecisoManometroCertInfoState();
}

class PrecisoManometroCertInfoState extends State<PrecisoManometroCertInfo> {
  
  updateWrapper(){
    setState(() {
        });
  }

  fetchGrandeza(){
    switch (selectionGrandeza){
      case '1':
        return "cmHg";
      break;
      case '2':
        return "mmHg";
      break;
      case '3':
        return "hPa";
      break;
      case '4':
        return "MPa";
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