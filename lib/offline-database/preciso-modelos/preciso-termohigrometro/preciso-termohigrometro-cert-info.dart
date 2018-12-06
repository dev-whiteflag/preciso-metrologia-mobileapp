// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-termohigrometro/preciso-termohigrometro-dataraw.dart';
// ------------------------------------------------------------------------ //
List<Map> precisoModelPadroes = [
  {"id": 0, "text": "Nenhuma Padrão Especificado"},
  {"id": 1, "text": "VOLSPA002 - Certificado RBC Nº 170504300"},
  {"id": 2, "text": "ME-VOL-INSPAD-PROV001 - Certificado RBC N° 2676-11"},
];

List<Map> precisoInstrumentoTermohigrometroUnidade = [
  {"id": 0, "text": "Escolha uma Unidade"},
  {"id": 1, "text": "°C"},
  {"id": 2, "text": "F"},
  {"id": 3, "text": "K"},
];

List<Map> precisoInstrumentoTermohigrometroLeituras = [
  {"id": 0, "text": "Escolha a Qtd. de Leituras"},
  {"id": 1, "text": "1 Leitura - Temperatura de Entrada"},
  {"id": 2, "text": "2 Leituras - Temperatura de Entrada e Saída"},
  {"id": 3, "text": "3 Leituras - Temperatura de Entrada, Saída e Umidade Relativa"},
];

class PrecisoTermohigrometroCertInfo extends StatefulWidget {
  @override
  PrecisoTermohigrometroCertInfoState createState() =>
      PrecisoTermohigrometroCertInfoState();
}

class PrecisoTermohigrometroCertInfoState
    extends State<PrecisoTermohigrometroCertInfo> {
  updateWrapper() {
    setState(() {});
  }

  fetchGrandeza() {
    switch (selectionGrandeza) {
      case '1':
        selectedGrandeza = "°C";
        return selectedGrandeza;
        break;
      case '2':
        selectedGrandeza = "F";
        return selectedGrandeza;
        break;
      case '3':
        selectedGrandeza = "K";
        return selectedGrandeza;
        break;
    }
  }

  returnLeituras() {
    switch (selectionLeitura) {
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
                  'Qtd. de Leituras Inválida',
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
                ),
              ])),
        ]);
        break;

      case '1':
        return termohigrometroLeitura1;
        break;

      case '2':
        return termohigrometroLeitura2;
        break;

      case '3':
        return termohigrometroLeitura3;
        break;

      default:
        return termohigrometroLeitura3;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: instrumentoInfoKey,
        child: Column(children: <Widget>[
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
                hint: new Text("Selecione a Qtd. de Leituras"),
                value: selectionLeitura,
                onChanged: (String newValue) {
                  setState(() {
                    selectionLeitura = newValue;
                  });
                  updateWrapper();
                  print("Termohigrometro - Qtd. de Leituras: " +
                      selectionLeitura);
                },
                items: precisoInstrumentoTermohigrometroLeituras.map((Map map) {
                  selectedLeitura = map["text"];
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
                hint: new Text("Selecione o Tipo de Instrumento"),
                value: selectionGrandeza,
                onChanged: (String newValue) {
                  setState(() {
                    selectionGrandeza = newValue;
                  });
                  updateWrapper();
                  print("Tipo de Instrumento: " + selectionGrandeza);
                },
                items: precisoInstrumentoTermohigrometroUnidade.map((Map map) {
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
          // Temperatura IN
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey)),
              child: Column(children: <Widget>[
                Container(
                  child: Text("Temperatura: Entrada",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.green)),
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: TextFormField(
                      controller: escalaStartTempInFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Inicio da Escala da Temperatura de Entrada";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Escala",
                        labelStyle: TextStyle(fontSize: 14),
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
                      controller: escalaEndTempInFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Final da Escala da Temperatura de Entrada";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Escala",
                        labelStyle: TextStyle(fontSize: 14),
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
                      controller: faixaStartTempInFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Inicio da Faixa de Uso da Temperatura de Entrada";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Faixa de Uso",
                        labelStyle: TextStyle(fontSize: 14),
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
                      controller: faixaEndTempInFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Final da Faixa de Uso da Temperatura de Entrada";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Faixa de Uso",
                        labelStyle: TextStyle(fontSize: 14),
                        suffixText: fetchGrandeza(),
                        border: OutlineInputBorder(),
                      ),
                    )),
                  ],
                ),
                Divider(),
                TextFormField(
                  controller: divisaoTempInFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Valor de uma Divisão da Temperatura de Entrada";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Valor de uma Divisão",
                    labelStyle: TextStyle(fontSize: 14),
                    suffixText: fetchGrandeza(),
                    border: OutlineInputBorder(),
                  ),
                ),
              ])),
          Divider(),
          // Temperatura OUT
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey)),
              child: Column(children: <Widget>[
                Container(
                  child: Text("Temperatura: Saida",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.green)),
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: TextFormField(
                      controller: escalaStartTempOutFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Inicio da Escala da Temperatura de Saida";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Escala",
                        labelStyle: TextStyle(fontSize: 14),
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
                      controller: escalaEndTempOutFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Final da Escala da Temperatura de Saida";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Escala",
                        labelStyle: TextStyle(fontSize: 14),
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
                      controller: faixaStartTempOutFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Inicio da Faixa de Uso da Temperatura de Saida";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Faixa de Uso",
                        labelStyle: TextStyle(fontSize: 14),
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
                      controller: faixaEndTempOutFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Final da Faixa de Uso da Temperatura de Saida";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Faixa de Uso",
                        labelStyle: TextStyle(fontSize: 14),
                        suffixText: fetchGrandeza(),
                        border: OutlineInputBorder(),
                      ),
                    )),
                  ],
                ),
                Divider(),
                TextFormField(
                  controller: divisaoTempOutFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Valor de uma Divisão da Temperatura de Saida";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Valor de uma Divisão",
                    labelStyle: TextStyle(fontSize: 14),
                    suffixText: fetchGrandeza(),
                    border: OutlineInputBorder(),
                  ),
                ),
              ])),
          Divider(),
          // Umidade Relativa
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey)),
              child: Column(children: <Widget>[
                Container(
                  child: Text("Umidade Relativa",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.green)),
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: TextFormField(
                      controller: escalaStartURFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Inicio da Escala da Umidade Relativa";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Escala",
                        labelStyle: TextStyle(fontSize: 14),
                        suffixText: "UR%",
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
                      controller: escalaEndURFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Final da Escala da Umidade Relativa";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Escala",
                        labelStyle: TextStyle(fontSize: 14),
                        suffixText: "UR%",
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
                      controller: faixaStartURFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Inicio da Faixa de Uso da Umidade Relativa";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Faixa de Uso",
                        labelStyle: TextStyle(fontSize: 14),
                        suffixText: "UR%",
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
                      controller: faixaEndURFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Final da Faixa de Uso da Umidade Relativa";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Faixa de Uso",
                        labelStyle: TextStyle(fontSize: 14),
                        suffixText: "UR%",
                        border: OutlineInputBorder(),
                      ),
                    )),
                  ],
                ),
                Divider(),
                TextFormField(
                  controller: divisaoURFormController,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira o Valor de uma Divisão da Umidade Relativa";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Valor de uma Divisão",
                    labelStyle: TextStyle(fontSize: 14),
                    suffixText: "UR%",
                    border: OutlineInputBorder(),
                  ),
                ),
              ])),
          Divider(),
          Container(child: returnLeituras(),),
          Divider(),
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey)),
              child: Column(children: <Widget>[
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
                      items: precisoModelPadroes.map((Map map) {
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
                      hint: new Text("Selecione um Padrão"),
                      value: selectionPadrao2,
                      onChanged: (String newValue) {
                        setState(() {
                          selectionPadrao2 = newValue;
                        });
                        print("Padrão: " + selectionPadrao2);
                      },
                      items: precisoModelPadroes.map((Map map) {
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
                      hint: new Text("Selecione um Padrão"),
                      value: selectionPadrao3,
                      onChanged: (String newValue) {
                        setState(() {
                          selectionPadrao3 = newValue;
                        });
                        print("Padrão: " + selectionPadrao3);
                      },
                      items: precisoModelPadroes.map((Map map) {
                        return new DropdownMenuItem<String>(
                          value: map["id"].toString(),
                          child: new Text(
                            map["text"],
                          ),
                        );
                      }).toList(),
                    )),
              ]))
        ]));
  }
}
