//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/preciso-login/preciso-login-logic.dart';
import 'package:precisometrologia_app/preciso-mainview/cert_main.dart';
//---------------------------------------------------------------------------------//
Pattern emailExclusionPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp emailExclusionRegex = new RegExp(emailExclusionPattern);

class PrecisoLoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _PrecisoLoginScreenState();
}

class _PrecisoLoginScreenState extends State<PrecisoLoginScreen> {
  var authHandler = new LoginAuth();
  TextEditingController emailFormController = new TextEditingController();
  TextEditingController passwordFormController = new TextEditingController();
  final loginFormKey = new GlobalKey<FormState>();

  validateAndLogin(){
    final form = loginFormKey.currentState;
    if (form.validate()){
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 100.0),
            child: ListView(
                addRepaintBoundaries: true,
                controller: ScrollController(),
                children: <Widget>[
                  Form(
                      key: loginKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(100.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/logo/precisometrologia.png'))),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 20.0,
                                    right: 20.0),
                                child: TextFormField(
                                    enableInteractiveSelection: true,
                                    controller: emailFormController,
                                    textCapitalization: TextCapitalization.none,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (!emailExclusionRegex
                                          .hasMatch(value)) {
                                        return "Email Inválido.";
                                      }

                                      if (value.isEmpty) {
                                        return "Insira seu Email.";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      border: OutlineInputBorder(),
                                    ))),
                            Container(
                                margin: EdgeInsets.only(
                                    bottom: 15.0, left: 20.0, right: 20.0),
                                child: TextFormField(
                                  controller: passwordFormController,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira sua Senha.";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Senha",
                                    border: OutlineInputBorder(),
                                  ),
                                )),
                            OutlineButton(
                                color: Colors.blue,
                                onPressed: () {
                                  validateAndLogin();
                                  }
                                },
                                child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 10.0,
                                        left: 60.0,
                                        right: 60.0),
                                    child: Text(
                                      "Continuar",
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.blue),
                                    )))
                          ]))
                ])));
  }
}
