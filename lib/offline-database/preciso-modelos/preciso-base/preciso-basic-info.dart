// ------------------------------------------------------------------------- //
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/varlists/globalslib.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-model-wrappers/preciso-model-chooser.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-base-dropdowns/ddb-preciso-base-classe.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basico-globals.dart';
// ------------------------------------------------------------------------ //

class PrecisoBasicInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: basicInfoKey,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(
                  left: 5.0, right: 5.0, bottom: 15.0, top: 5.0),
              child: Text(
                'Informações Gerais',
                overflow: TextOverflow.clip,
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
              )),
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey)),
              child: Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: TextFormField(
                      controller: empresaFormController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Nome da Empresa.";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Empresa",
                        border: OutlineInputBorder(),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: TextFormField(
                      controller: enderecoFormController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Endereço da Empresa.";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Endereço",
                        border: OutlineInputBorder(),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: TextFormField(
                      controller: cidadeEstadoFormController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Cidade c/ Estado da Empresa.";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Cidade c/ Estado",
                        border: OutlineInputBorder(),
                      ),
                    )),
                Container(
                    child: TextFormField(
                  controller: equipFormController,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      equipFormController.text = "Não Especificado";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Local, Setor, Área, Equipamento",
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
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text("Instrumento",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.green)),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: TextFormField(
                      controller: marcaFormController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a Marca do Instrumento.";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Marca",
                        border: OutlineInputBorder(),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: TextFormField(
                      controller: modeloFormController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Modelo do Instrumento.";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Modelo",
                        border: OutlineInputBorder(),
                      ),
                    )),
                PrecisoBaseDropdownClasse(),
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: TextFormField(
                      controller: numeroSerieFormController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          numeroSerieFormController.text = "Não Especificado";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Numero de Série",
                        border: OutlineInputBorder(),
                      ),
                    )),
                Container(
                    child: TextFormField(
                  controller: identificacaoFormController,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Insira a Identificação do Instrumento.";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Identificação",
                    border: OutlineInputBorder(),
                  ),
                )),
              ])),
              Divider(),
              PrecisoModelDropdown(),
        ],
      ),
    );
  }
}
