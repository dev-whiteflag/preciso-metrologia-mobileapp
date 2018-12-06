// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-vidrariagraduada/preciso-vidraria-cert-varlist.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

List<Map> precisoModelPadroes = [
  {"id": 0, "text": "Nenhum Padrão Especificado"},
  {"id": 1, "text": "VOLSPA002 - Certificado RBC Nº 170504300"},
  {"id": 2, "text": "ME-VOL-INSPAD-PROV001 - Certificado RBC N° 2676-11"},
];

class PrecisoVidrariaCertInfo extends StatefulWidget {
  @override
  PrecisoVidrariaCertInfoState createState() => PrecisoVidrariaCertInfoState();
}

class PrecisoVidrariaCertInfoState extends State<PrecisoVidrariaCertInfo> {
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
              margin: EdgeInsets.only(bottom: 5.0),
              child: TextFormField(
                controller: pressaoFormController,
                textCapitalization: TextCapitalization.none,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira a Pressão Atmosférica";
                  }
                },
                decoration: InputDecoration(
                  labelText: "Pressão Atmosférica",
                  labelStyle: TextStyle(fontSize: 14),
                  suffixText: "mbar",
                  border: OutlineInputBorder(),
                ),
              )),
          Container(
              margin: EdgeInsets.only(bottom: 5.0),
              child: TextFormField(
                controller: volumeFormController,
                textCapitalization: TextCapitalization.none,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira o Volume Nominal";
                  }
                },
                decoration: InputDecoration(
                  labelText: "Volume Nominal",
                  labelStyle: TextStyle(fontSize: 14),
                  suffixText: "uL",
                  border: OutlineInputBorder(),
                ),
              )),
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
                  labelStyle: TextStyle(fontSize: 14),
                  suffixText: "uL",
                  border: OutlineInputBorder(),
                ),
              )),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Text(
                    'a',
                    overflow: TextOverflow.clip,
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
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
                  labelStyle: TextStyle(fontSize: 14),
                  suffixText: "uL",
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
                  labelStyle: TextStyle(fontSize: 14),
                  suffixText: "uL",
                  border: OutlineInputBorder(),
                ),
              )),
          Divider(),
          Column(
            children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
                child: Text(
                  'Dados Brutos',
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
                )),
            // DADOS: CALIBRAÇÃO
            Container(
                // - Primeiro Container Gráfico - //
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey)),
                child: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text("Calibração",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.green)),
                  ),
                  Container(
                      // - V.I.I 1 - //
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaVII1FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.I.I 1";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.I.I 1",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR1VCC1FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 1";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 1",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR1VCC2FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 2";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 2",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: TextFormField(
                          controller: vidrariaR1VCC3FormController,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Insira o V.V.C 3";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "V.V.C 3",
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        )),
                      ])),
                  Divider(),
                  Container(
                      // - V.I.I 2 - //
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaVII2FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.I.I 2";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.I.I 2",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR2VCC1FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 1";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 1",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR2VCC2FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 2";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 2",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: TextFormField(
                          controller: vidrariaR2VCC3FormController,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Insira o V.V.C 3";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "V.V.C 3",
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        )),
                      ])),
                  Divider(),
                  Container(
                      // - V.I.I 3 - //
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaVII3FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.I.I 3";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.I.I 3",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR3VCC1FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 1";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 1",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR3VCC2FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 2";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 2",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: TextFormField(
                          controller: vidrariaR3VCC3FormController,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Insira o V.V.C 3";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "V.V.C 3",
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        )),
                      ])),
                  Divider(),
                  Container(
                      // - V.I.I 4 - //
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaVII4FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.I.I 4";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.I.I 4",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR4VCC1FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 1";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 1",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR4VCC2FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 2";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 2",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: TextFormField(
                          controller: vidrariaR4VCC3FormController,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Insira o V.V.C 3";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "V.V.C 3",
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        )),
                      ])),
                  Divider(),
                  Container(
                      // - V.I.I 5 - //
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey)),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaVII5FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.I.I 5";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.I.I 5",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR5VCC1FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 1";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 1",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 5.0),
                                child: TextFormField(
                                  controller: vidrariaR5VCC2FormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira o V.V.C 2";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "V.V.C 2",
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                ))),
                        Expanded(
                            child: TextFormField(
                          controller: vidrariaR5VCC3FormController,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Insira o V.V.C 3";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "V.V.C 3",
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        )),
                      ])),
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
                ]))
          ])
        ]));
  }
}
