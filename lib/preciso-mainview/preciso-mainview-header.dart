//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/logic/preciso-id-logic.dart';
import 'package:precisometrologia_app/logic/preciso-send-logic.dart';
import 'package:precisometrologia_app/preciso-login/preciso-login-globals.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-model-wrappers/preciso-model-globals.dart';
//---------------------------------------------------------------------------------//
var certificadoIDFormController = TextEditingController();

class PrecisoMainViewHeader extends StatefulWidget{
  @override
  PrecisoMainViewHeaderState createState() => new PrecisoMainViewHeaderState();
}

class PrecisoMainViewHeaderState extends State<PrecisoMainViewHeader>{
  var _certificadoID = getIDCertificado();

/*   initState(){
    _getID();
  } */

  _update(){
    setState(() {
        certIncremental++;
        _certificadoID = getIDCertificado();
        //_getID();
        });
  }

 /*  _getID() async{
    certificadoIDFormController.text = await _certificadoID;
    setState(() {
        });
  } */

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 5.0),
          child: TextFormField(
                controller: certificadoIDFormController,
                enabled: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: ("Certificado"),
                  labelStyle: TextStyle(color: Colors.black, ),
                  border: OutlineInputBorder(),
                ),
              )),
      Container(
          alignment: Alignment.center,
          child: OutlineButton(
            onPressed: () {
              sendFirebaseData(selectedFModel);
              _update();},
            child: Container(
              padding: EdgeInsets.only(left: 100.0, right: 100.0),
              child: Text(
              "Enviar", style: TextStyle(color: Colors.blue),),))),
    ],);
  }
}