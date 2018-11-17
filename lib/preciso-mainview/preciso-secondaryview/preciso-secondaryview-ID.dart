//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/logic/preciso-id-logic.dart';
import 'package:firebase_auth/firebase_auth.dart';

//---------------------------------------------------------------------------------//
class PrecisoSecondaryViewID extends StatelessWidget {
  var userName = "default";
  var userEmail = "default";
  var precisoID = getPrecisoID();

  _getPrecisoID() {
    var precisoID = getPrecisoID();
    var precisoFuncionarios = [
      {"precisoID": "001", "name": "John Doe"},
      {"precisoID": "002", "name": "Cleide Machado"},
      {"precisoID": "003", "name": "Brenno Fagundes"},
    ];
    precisoFuncionarios.forEach((value) {
      if (precisoID == value["precisoID"]) {
        userName = value["name"];
      }
    });

    return userName;
  }

  _getUserEmail() {
    var precisoID = getPrecisoID();
    var precisoFuncionarios = [
      {"precisoID": "001", "email": "nsei@precisometrologia.com"},
      {"precisoID": "002", "email": "kleidego@hotmail.com"},
      {"precisoID": "003", "email": "dev.whiteflag@gmail.com"},
    ];
    precisoFuncionarios.forEach((value) {
      if (precisoID == value["precisoID"]) {
        userEmail = value["email"];
      }
    });

    return userEmail;
  }

  @override
  Widget build(BuildContext context) {
    userName = _getPrecisoID();
    userEmail = _getUserEmail();
    return Scaffold(
        body: Column(children: <Widget>[
      AppBar(
        title: Text("Conta Preciso"),
      ),
      Expanded(
          child: ListView.builder(
              itemCount: 1,
              addRepaintBoundaries: true,
              controller: new ScrollController(),
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Container(
                    child: Text(
                      (userName.toString()),
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 30.0),
                    ),
                  ),
                  Divider(
                    height: 50,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10.0, bottom: 28.0),
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  ("Email:"),
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                )),
                            Text(
                              (userEmail.toString()),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 14.0),
                            ),
                          ])),
                  Container(
                      margin: EdgeInsets.only(left: 10.0),
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  ("Preciso ID:"),
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                )),
                            Text(
                              (precisoID),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 14.0),
                            ),
                          ])),
                ]);
              }))
    ]));
  }
}
