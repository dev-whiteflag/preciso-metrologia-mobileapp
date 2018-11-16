//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/preciso-mainview/cert_listview_informacoes.dart';
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
              icon: Icon(
                Icons.account_box,
                size: 30.0,
                color: Colors.white,
              ),
              tooltip: 'Conta Preciso',
            ),
            IconButton(
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
