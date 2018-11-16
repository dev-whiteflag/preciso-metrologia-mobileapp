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
                  ])),
            ]),
          );
var secondReading =  Container(
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
                  ])),
            ]),
          );