// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-raw-data-aux.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //
var isSecondReadingEnabled = false;
var isThirdReadingEnabled = false;

class PrecisoBasicRawData extends StatefulWidget{
  @override
  PrecisoBasicRawDataState createState() => PrecisoBasicRawDataState();
}

class PrecisoBasicRawDataState extends State<PrecisoBasicRawData>{
  
  switchSecondReading(){
    if (isSecondReadingEnabled == true){return secondReading;}
    else {return Container();}
  }

    switchThirdReading(){
    if (isThirdReadingEnabled == true){return thirdReading;}
    else {return Container();}
  }

  updateWrapper(){
    setState(() {
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: dadosBrutosKey,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
              child: Text(
                'Dados Brutos',
                overflow: TextOverflow.clip,
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
              )),
          // Primeira Leitura
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey)),
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Text("Primeira Leitura",
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
                                controller: vcc11FormController,
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
                                controller: vcc11IncertezaFormController,
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
                                  controller: vcc1Vii11FormController,
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
                                  controller: vcc1Vii21FormController,
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
                          controller: vcc1Vii31FormController,
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
                                controller: vcc21FormController,
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
                                controller: vcc21IncertezaFormController,
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
                                  controller: vcc2Vii11FormController,
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
                                  controller: vcc2Vii21FormController,
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
                          controller: vcc2Vii31FormController,
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
                                controller: vcc31FormController,
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
                                controller: vcc31IncertezaFormController,
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
                                  controller: vcc3Vii11FormController,
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
                                  controller: vcc3Vii21FormController,
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
                          controller: vcc3Vii31FormController,
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
                                controller: vcc41FormController,
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
                                controller: vcc41IncertezaFormController,
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
                                  controller: vcc4Vii11FormController,
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
                                  controller: vcc4Vii21FormController,
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
                          controller: vcc4Vii31FormController,
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
          ),
          Divider(),
          // Segunda Leitura
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            Container(
                child: Text("Ativar Segunda Leitura?",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.blueGrey)),
              ),
            Checkbox(
                value: isSecondReadingEnabled,
                onChanged: (bool newValue){setState(() {
                                  isSecondReadingEnabled = newValue;
                                  updateWrapper();
                                });},
              )]),
          Divider(),
          Container(child: switchSecondReading(),),
          // Terceira Leitura
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            Container(
                child: Text("Ativar Terceira Leitura?",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.blueGrey)),
              ),
            Checkbox(
                value: isThirdReadingEnabled,
                onChanged: (bool newValue){setState(() {
                                  isThirdReadingEnabled = newValue;
                                  updateWrapper();
                                });},
              )]),
          Divider(),
          Container(child: switchThirdReading(),),
        ],
      ),
    );
  }
}
