// ------------------------------------------------------------------------- //
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// ------------------------------------------------------------------------ //
import 'package:precisometrologia_app/preciso-login/preciso-login-logic.dart';
// ------------------------------------------------------------------------ //

//---------------------------------------------------------------------------------//
// Firebase: Configuração.
//---------------------------------------------------------------------------------//
// Essa função (main) é usada pelo dart para chamar o widget principal, no caso, 'PrecisoApp'.

Future<void> main() async {
  final FirebaseApp precisoApp = await FirebaseApp.configure(
    name: 'PrecisoApp',
    options: const FirebaseOptions(
      googleAppID: '1:517191616628:android:325410d962aefc1e',
      gcmSenderID: '517191616628',
      apiKey: 'AIzaSyDpIYK4Ba7s2ZEbD4gBG_T-Itj176-I098',
      projectID: 'precisometrolgiaapp',
    ),
  );
  final Firestore firestore = Firestore(app: precisoApp);
  runApp(PrecisoApp());
}
// MYSQL Preciso - user: apppreciso - pass: xCH25EPqZ8CeQT@

class PrecisoApp extends StatelessWidget {
  PrecisoApp({this.firestore});
  final Firestore firestore;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Preciso Metrologia",
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[400],
          accentColor: Colors.deepPurple[400],),
        //home: LoginScreen()
        home: Scaffold(
          body: handleCurrentScreen()),);
  }
}
