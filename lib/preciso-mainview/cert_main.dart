//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/logic/preciso-send-logic.dart';
import 'package:precisometrologia_app/preciso-mainview/cert_listview_informacoes.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-secondaryview/preciso-secondaryview-info.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-secondaryview/preciso-secondaryview-ID.dart';
//---------------------------------------------------------------------------------//

class MainCertWindow extends StatelessWidget {
  MainCertWindow({this.uuid});
  var uuid;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      AppBar(
          title: Text("Preciso Metrologia"),
          actions: <Widget>[
            IconButton(
              onPressed: () =>  Navigator.push(
                context, MaterialPageRoute(builder: (context) => PrecisoSecondaryViewID()),),
              icon: Icon(
                Icons.account_box,
                size: 30.0,
                color: Colors.white,
              ),
              tooltip: 'Conta Preciso',
            ),
            IconButton(
              onPressed: () =>  Navigator.push(
                context, MaterialPageRoute(builder: (context) => PrecisoSecondaryViewInfo()),),
              icon: Icon(
                Icons.info,
                size: 30.0,
                color: Colors.white,
              ),
              tooltip: 'Sobre o App',
            ),
          ]),
      PrecisoMainListView(),
    ]);
  }
}
