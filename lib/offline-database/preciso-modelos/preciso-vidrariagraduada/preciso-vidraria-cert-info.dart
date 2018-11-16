// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
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
          ],
        ));
  }
}
