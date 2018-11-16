// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

class PrecisoBasicCertInfo extends StatelessWidget {
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
          // Temperatura IN
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey)),
              child: Column(children: <Widget>[
                Container(
                  child: Text("Temperatura IN",
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
                          return "Insira o Inicio da Escala da Temperatura IN";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Escala",
                        suffixText: "°C",
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
                          return "Insira o Final da Escala da Temperatura IN";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Escala",
                        suffixText: "°C",
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
                          return "Insira o Inicio da Faixa de Uso da Temperatura IN";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Faixa de Uso",
                        suffixText: "°C",
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
                          return "Insira o Final da Faixa de Uso da Temperatura IN";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Faixa de Uso",
                        suffixText: "°C",
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
                      return "Insira o Valor de uma Divisão da Temperatura IN";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Valor de uma Divisão",
                    suffixText: "°C",
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
                  child: Text("Temperatura OUT",
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
                          return "Insira o Inicio da Escala da Temperatura OUT";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Escala",
                        suffixText: "°C",
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
                          return "Insira o Final da Escala da Temperatura OUT";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Escala",
                        suffixText: "°C",
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
                          return "Insira o Inicio da Faixa de Uso da Temperatura OUT";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Inicio da Faixa de Uso",
                        suffixText: "°C",
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
                          return "Insira o Final da Faixa de Uso da Temperatura OUT";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Faixa de Uso",
                        suffixText: "°C",
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
                      return "Insira o Valor de uma Divisão da Temperatura OUT";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Valor de uma Divisão",
                    suffixText: "°C",
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
                      controller: faixaStartURFormController,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Final da Faixa de Uso da Umidade Relativa";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Final da Faixa de Uso",
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
                    suffixText: "UR%",
                    border: OutlineInputBorder(),
                  ),
                ),
              ])),
          Divider(),
        ],
      ),
    );
  }
}
