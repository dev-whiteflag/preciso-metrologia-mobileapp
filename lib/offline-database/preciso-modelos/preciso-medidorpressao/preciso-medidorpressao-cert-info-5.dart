// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-medidorpressao/preciso-medidorpressao-cert-varlist.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

List<Map> precisoInstrumentoManometroGrandeza = [
  {"id": 0, "text": "Escolha uma Grandeza"},
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

class PrecisoMedidorPressao5CertInfo extends StatefulWidget {
  @override
  PrecisoMedidorPressao5CertInfoState createState() =>
      PrecisoMedidorPressao5CertInfoState();
}

class PrecisoMedidorPressao5CertInfoState
    extends State<PrecisoMedidorPressao5CertInfo> {
  initState() {
    setState(() {
      selectionGrandeza = '0';
      selectedGrandeza = '0';
    });
  }

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
                    selectedClasse = map["text"];
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
            Column(
              children: <Widget>[
                Container(
                    margin:
                        EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
                    child: Text(
                      'Dados Brutos',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 20.0),
                    )),
                // DADOS: CALIBRAÇÃO
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey)),
                  child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text("Calibração: Carrego",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.green)),
                    ),
                    //DADOS: V.I.I 1
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII1FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 1";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 1",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          // Linha 2
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R1VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R1VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C1R1VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.I.I 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          ),
                        ])),
                    Divider(),
                    //DADOS: V.I.I 2
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII2FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 2";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 2",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          // Linha 2
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R2VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R2VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C1R2VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.V.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          ),
                        ])),
                    Divider(),
                    //DADOS: V.I.I 3
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII3FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 3";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 3",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          // Linha 2
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R3VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.C.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.C.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R3VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.C.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.C.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C1R3VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.C.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.C.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          ),
                        ])),
                    Divider(),
                    // V.V.C 4
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII4FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 4";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 4",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R4VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R4VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C1R4VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.V.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          )
                        ])),
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin:
                                        EdgeInsets.only(right: 5.0, top: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII5FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 5";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 5",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R5VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C1R5VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C1R5VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.V.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          )
                        ])),
                  ]),
                ),
                Divider(),
              ],
            ),
            Column(
              children: <Widget>[
                // DADOS: CALIBRAÇÃO
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey)),
                  child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text("Calibração: Descarrego",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.green)),
                    ),
                    //DADOS: V.I.I 1
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII5FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 1";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 1",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          // Linha 2
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R1VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R1VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C2R1VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.I.I 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          ),
                        ])),
                    Divider(),
                    //DADOS: V.I.I 2
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII4FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 2";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 2",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          // Linha 2
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R2VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R2VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C2R2VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.V.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          ),
                        ])),
                    Divider(),
                    //DADOS: V.I.I 3
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII3FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 3";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 3",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          // Linha 2
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R3VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.C.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.C.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R3VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.C.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.C.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C2R3VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.C.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.C.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          ),
                        ])),
                    Divider(),
                    // V.V.C 4
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          // Linha 1
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: 5.0, bottom: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII2FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 4";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 4",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R4VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R4VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C2R4VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.V.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          )
                        ])),
                    Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.grey)),
                        child: Column(children: <Widget>[
                          Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin:
                                        EdgeInsets.only(right: 5.0, top: 5.0),
                                    child: TextFormField(
                                      controller: pressaoL5C1VII1FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 5";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 5",
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                          ]),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R5VCC1FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 1";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 1",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: TextFormField(
                                        controller:
                                            pressaoL5C2R5VCC2FormController,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return "Insira o V.V.C 2";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "V.V.C 2",
                                          border: OutlineInputBorder(),
                                        ),
                                      ))),
                              Expanded(
                                  child: TextFormField(
                                controller: pressaoL5C2R5VCC3FormController,
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o V.V.C 3";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "V.V.C 3",
                                  border: OutlineInputBorder(),
                                ),
                              )),
                            ],
                          )
                        ])),
                  ]),
                ),
                Divider(),
              ],
            ),
          ],
        ));
  }
}
