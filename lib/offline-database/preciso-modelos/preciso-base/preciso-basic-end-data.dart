// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

class PrecisoBasicEndData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: dadosAdicionaisInfoKey,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
              child: Text(
                'Informações Adicionais',
                overflow: TextOverflow.clip,
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
              )),
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: TextFormField(
                        controller: localFormController,
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o Local da Calibração";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Local da Calibração",
                          border: OutlineInputBorder(),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: TextFormField(
                        controller: tempEndFormController,
                        textCapitalization: TextCapitalization.none,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira a Temperatura do Local da Calibração";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Temperatura do Local",
                          suffixText: "°C",
                          border: OutlineInputBorder(),
                        ),
                      )),
                  Container(
                      child: TextFormField(
                    controller: umidadeEndFormController,
                    textCapitalization: TextCapitalization.none,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira a Umidade Relativa do Local da Calibração";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Umidade Relativa do Local",
                      suffixText: "UR%",
                      border: OutlineInputBorder(),
                    ),
                  )),
                   Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: TextFormField(
                    controller: diaProximaCalibracaoFormController,
                    textCapitalization: TextCapitalization.none,
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira a Data da Próxima Calibração";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Data da Próxima Calibração",
                      border: OutlineInputBorder(),
                    ),
                  ))
                ],
              ))
        ],
      ),
    );
  }
}
