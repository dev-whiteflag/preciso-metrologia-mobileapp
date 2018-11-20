// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //
var thirdReading = Container(
  padding: EdgeInsets.all(10.0),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.grey)),
  child: Column(children: <Widget>[
    Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Text("Terceira Leitura",
          overflow: TextOverflow.clip,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.green)),
    ),
    // V.V.C 1
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc13FormController,
                      textCapitalization: TextCapitalization.none,
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
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc13IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc1Vii13FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc1Vii23FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc1Vii33FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc1Vii43FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc1Vii53FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
    Divider(),
    // V.V.C 2
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc23FormController,
                      textCapitalization: TextCapitalization.none,
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
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc23IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc2Vii13FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc2Vii23FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc2Vii33FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc2Vii43FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc2Vii53FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
    Divider(),
    // V.V.C 3
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc33FormController,
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
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc33IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc3Vii13FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc3Vii23FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc3Vii33FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc3Vii43FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc3Vii53FormController,
                      textCapitalization: TextCapitalization.none,
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc43FormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o V.V.C 4";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "V.V.C 4",
                        border: OutlineInputBorder(),
                      ),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc43IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc4Vii13FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc4Vii23FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc4Vii33FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc4Vii43FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc4Vii53FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
    Divider(),
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc53FormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o V.V.C 5";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "V.V.C 5",
                        border: OutlineInputBorder(),
                      ),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc53IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc5Vii13FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc5Vii23FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc5Vii33FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc5Vii43FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc5Vii53FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
  ]),
);
var secondReading = Container(
  padding: EdgeInsets.all(10.0),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.grey)),
  child: Column(children: <Widget>[
    Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Text("Segunda Leitura",
          overflow: TextOverflow.clip,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.green)),
    ),
    // V.V.C 1
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc12FormController,
                      textCapitalization: TextCapitalization.none,
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
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc12IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc1Vii12FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc1Vii22FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc1Vii32FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc1Vii42FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc1Vii52FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
    Divider(),
    // V.V.C 2
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc22FormController,
                      textCapitalization: TextCapitalization.none,
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
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc22IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc2Vii12FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc2Vii22FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc2Vii32FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc2Vii42FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc2Vii52FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
    Divider(),
    // V.V.C 3
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc32FormController,
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
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc32IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc3Vii12FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc3Vii22FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc3Vii32FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc3Vii42FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc3Vii52FormController,
                      textCapitalization: TextCapitalization.none,
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc42FormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o V.V.C 4";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "V.V.C 4",
                        border: OutlineInputBorder(),
                      ),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc42IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc4Vii12FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc4Vii22FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc4Vii32FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc4Vii42FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc4Vii52FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
    Divider(),
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
                    margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: vcc52FormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o V.V.C 5";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "V.V.C 5",
                        border: OutlineInputBorder(),
                      ),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: TextFormField(
                      controller: vcc52IncertezaFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Incerteza do Padrões";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Incerteza",
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
                        controller: vcc5Vii12FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: TextFormField(
                        controller: vcc5Vii22FormController,
                        textCapitalization: TextCapitalization.none,
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
              Expanded(
                  child: TextFormField(
                controller: vcc5Vii32FormController,
                textCapitalization: TextCapitalization.none,
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
              )),
            ],
          ),
          Row(children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: TextFormField(
                      controller: vcc5Vii42FormController,
                      textCapitalization: TextCapitalization.none,
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
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextFormField(
                      controller: vcc5Vii52FormController,
                      textCapitalization: TextCapitalization.none,
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
        ])),
  ]),
);
