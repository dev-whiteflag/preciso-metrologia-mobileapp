//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-termohigrometro/preciso-termohigrometro-cert-varlist.dart';
//---------------------------------------------------------------------------------//

var termohigrometroLeitura1 = Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: Text("Calibração : Temperatura de Entrada",
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
                        controller: termohigrometroVCC1FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 1";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 1",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR1VII1FormController,
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
                        controller: termohigrometroR1VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR1VII3FormController,
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
                        controller: termohigrometroVCC2FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 2";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 2",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR2VII1FormController,
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
                        controller: termohigrometroR2VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR2VII3FormController,
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
                        controller: termohigrometroVCC3FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 3";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 3",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR3VII1FormController,
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
                        controller: termohigrometroR3VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR3VII3FormController,
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
                        controller: termohigrometroVCC4FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 4";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 4",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR4VII1FormController,
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
                        controller: termohigrometroR4VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR4VII3FormController,
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
                        controller: termohigrometroVCC5FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 5";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 5",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR5VII1FormController,
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
                        controller: termohigrometroR5VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR5VII3FormController,
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
              )),
            ])),
]);

var termohigrometroLeitura2 = Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: Text("Calibração : Temperatura de Entrada",
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
                        controller: termohigrometroVCC1FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 1";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 1",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR1VII1FormController,
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
                        controller: termohigrometroR1VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR1VII3FormController,
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
                        controller: termohigrometroVCC2FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 2";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 2",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR2VII1FormController,
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
                        controller: termohigrometroR2VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR2VII3FormController,
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
                        controller: termohigrometroVCC3FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 3";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 3",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR3VII1FormController,
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
                        controller: termohigrometroR3VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR3VII3FormController,
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
                        controller: termohigrometroVCC4FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 4";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 4",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR4VII1FormController,
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
                        controller: termohigrometroR4VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR4VII3FormController,
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
                        controller: termohigrometroVCC5FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 5";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 5",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR5VII1FormController,
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
                        controller: termohigrometroR5VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR5VII3FormController,
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
              )),
            ])),
  Divider(),
  Container(
      // - Primeiro Container Gráfico - //
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey)),
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: Text("Calibração : Temperatura de Saída",
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
                        controller: termohigrometroA1VCC1FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 1";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 1",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA1R1VII1FormController,
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
                        controller: termohigrometroA1R1VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA1R1VII3FormController,
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
                        controller: termohigrometroA1VCC2FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 2";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 2",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA1R2VII1FormController,
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
                        controller: termohigrometroA1R2VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA1R2VII3FormController,
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
                        controller: termohigrometroA1VCC3FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 3";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 3",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA1R3VII1FormController,
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
                        controller: termohigrometroA1R3VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA1R3VII3FormController,
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
                        controller: termohigrometroA1VCC4FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 4";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 4",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA1R4VII1FormController,
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
                        controller: termohigrometroA1R4VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA1R4VII3FormController,
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
                        controller: termohigrometroA1VCC5FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 5";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 5",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA1R5VII1FormController,
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
                        controller: termohigrometroA1R5VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA1R5VII3FormController,
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
              )),
            ])),
      ]))
]);

var termohigrometroLeitura3 = Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: Text("Calibração : Temperatura de Entrada",
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
                        controller: termohigrometroVCC1FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 1";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 1",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR1VII1FormController,
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
                        controller: termohigrometroR1VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR1VII3FormController,
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
                        controller: termohigrometroVCC2FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 2";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 2",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR2VII1FormController,
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
                        controller: termohigrometroR2VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR2VII3FormController,
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
                        controller: termohigrometroVCC3FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 3";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 3",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR3VII1FormController,
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
                        controller: termohigrometroR3VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR3VII3FormController,
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
                        controller: termohigrometroVCC4FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 4";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 4",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR4VII1FormController,
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
                        controller: termohigrometroR4VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR4VII3FormController,
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
                        controller: termohigrometroVCC5FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 5";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 5",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroR5VII1FormController,
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
                        controller: termohigrometroR5VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroR5VII3FormController,
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
              )),
            ])),
  Divider(),
  Container(
      // - Primeiro Container Gráfico - //
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey)),
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: Text("Calibração : Umidade Relativa",
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
                        controller: termohigrometroA2VCC1FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 1";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 1",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA2R1VII1FormController,
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
                        controller: termohigrometroA2R1VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA2R1VII3FormController,
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
                        controller: termohigrometroA2VCC2FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 2";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 2",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA2R2VII1FormController,
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
                        controller: termohigrometroA2R2VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA2R2VII3FormController,
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
                        controller: termohigrometroA2VCC3FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 3";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 3",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA2R3VII1FormController,
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
                        controller: termohigrometroA2R3VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA2R3VII3FormController,
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
                        controller: termohigrometroA2VCC4FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 4";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 4",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA2R4VII1FormController,
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
                        controller: termohigrometroA2R4VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA2R4VII3FormController,
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
                        controller: termohigrometroA2VCC5FormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o V.C.C 5";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "V.C.C 5",
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: termohigrometroA2R5VII1FormController,
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
                        controller: termohigrometroA2R5VII2FormController,
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
                  child: TextFormField(
                controller: termohigrometroA2R5VII3FormController,
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
              )),
            ])),
      ])),
]);