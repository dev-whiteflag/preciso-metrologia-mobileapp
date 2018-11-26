// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-vidrariagraduada/preciso-vidraria-cert-varlist.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

class PrecisoVidrariaCertInfo extends StatelessWidget {
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
                    suffixText: "uL",
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
                      child: Text("Calibração",
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
                                      controller: vidariaVII1FormController,
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
                                            vidrariaR1VCC1FormController,
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
                                            vidrariaR1VCC2FormController,
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
                                controller: vidrariaR1VCC3FormController,
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
                                      controller: vidariaVII2FormController,
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
                                            vidrariaR2VCC1FormController,
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
                                            vidrariaR2VCC2FormController,
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
                                      controller: vidariaVII3FormController,
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
                                            vidrariaR3VCC1FormController,
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
                                            vidrariaR3VCC2FormController,
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
                                controller: vidrariaR3VCC3FormController,
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
                                      controller: vidariaVII4FormController,
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
                                            vidrariaR4VCC1FormController,
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
                                            vidrariaR4VCC2FormController,
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
                                      controller: vidariaVII5FormController,
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
                                            vidrariaR5VCC1FormController,
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
                                            vidrariaR5VCC2FormController,
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
