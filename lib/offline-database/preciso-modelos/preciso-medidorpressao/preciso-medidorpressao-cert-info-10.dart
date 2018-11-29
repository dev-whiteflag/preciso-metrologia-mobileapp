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

List<Map> precisoModelPadroes = [
  {"id": 0, "text": "Nenhuma Padrão Especificado"},
  {"id": 1, "text": "VOLSPA002 - Certificado RBC Nº 170504300"},
  {"id": 2, "text": "ME-VOL-INSPAD-PROV001 - Certificado RBC N° 2676-11"},
];

class PrecisoMedidorPressao10CertInfo extends StatefulWidget {
  @override
  PrecisoMedidorPressao10CertInfoState createState() =>
      PrecisoMedidorPressao10CertInfoState();
}

class PrecisoMedidorPressao10CertInfoState
    extends State<PrecisoMedidorPressao10CertInfo> {
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

            // -------------------------------------------------------- DADOS BRUTOS ------------------------------------------------------------- //
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

                // ------------------------------- Calibração: Carrego ----------------------------------- //
                Container(
                    // - Primeiro Container Gráfico - //
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
                                      controller:
                                          pressaoL10C1VII1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R1VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R1VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R1VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R2VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R2VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R2VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII3FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R3VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R3VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R3VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII4FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R4VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R4VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R4VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII5FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R5VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R5VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R5VCC3FormController,
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
                          // - V.I.I 6 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII6FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 6";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 6",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R6VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R6VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R6VCC3FormController,
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
                          // - V.I.I 7 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII7FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 7";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 7",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R7VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R7VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R7VCC3FormController,
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
                          // - V.I.I 8 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII8FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 8";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 8",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R8VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R8VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R8VCC3FormController,
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
                          // - V.I.I 9 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII9FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 9";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 9",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R9VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R9VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R9VCC3FormController,
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
                          // - V.I.I 10 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII10FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 10";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 10",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R10VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1R10VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C1R10VCC3FormController,
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
                          ]))
                    ])),
                Divider(),
                // ----------------------------- Calibração: Descarrego --------------------------------- //
                Container(
                    // - Primeiro Container Gráfico - //
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
                                      controller:
                                          pressaoL10C1VII10FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R1VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R1VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R1VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII9FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R2VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R2VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R2VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII8FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R3VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R3VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R3VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII7FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R4VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R4VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R4VCC3FormController,
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
                                      controller:
                                          pressaoL10C1VII6FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R5VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R5VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R5VCC3FormController,
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
                          // - V.I.I 6 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII5FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 6";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 6",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R6VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R6VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R6VCC3FormController,
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
                          // - V.I.I 7 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII4FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 7";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 7",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R7VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R7VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R7VCC3FormController,
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
                          // - V.I.I 8 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII3FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 8";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 8",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R8VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R8VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R8VCC3FormController,
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
                          // - V.I.I 9 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII2FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 9";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 9",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R9VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R9VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R9VCC3FormController,
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
                          // - V.I.I 10 - //
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C1VII1FormController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Insira o V.I.I 10";
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: "V.I.I 10",
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R10VCC1FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    child: TextFormField(
                                      controller:
                                          pressaoL10C2R10VCC2FormController,
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
                                        labelStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(),
                                      ),
                                    ))),
                            Expanded(
                                child: TextFormField(
                              controller: pressaoL10C2R10VCC3FormController,
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
                          ]))
                    ])),
              ],
            ),
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
                          selectedPadrao1 = map["text"];
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
                          selectedPadrao2 = map["text"];
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
                          selectedPadrao3 = map["text"];
                          return new DropdownMenuItem<String>(
                            value: map["id"].toString(),
                            child: new Text(
                              map["text"],
                            ),
                          );
                        }).toList(),
                      )),
                ]))
          ],
        ));
  }
}
