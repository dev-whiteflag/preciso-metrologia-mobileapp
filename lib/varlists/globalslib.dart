//---------------------------------------------------------------------------------//
library precisometrologia_app.globals;
//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
//---------------------------------------------------------------------------------//
// VAR LIST - VÁRIAVEIS GLOBAIS DO APLICATIVO
//---------------------------------------------------------------------------------//

// CertID
var certIncrementID = 000;
String certID;
String workerID;

// Forms
final basicInfoKey = new GlobalKey<FormState>();
final advancedInfoKey = new GlobalKey<FormState>();
final instrumentoInfoKey = new GlobalKey<FormState>();
final instrumentoUniqueInfoKey = new GlobalKey<FormState>();
final dadosBrutosKey = new GlobalKey<FormState>();
final dadosBrutosInfoKey = new GlobalKey<FormState>();
final dadosAdicionaisInfoKey = new GlobalKey<FormState>();

var modelWrapperKey;

// Auth
final emailAuthController = TextEditingController();
final passwordAuthController = TextEditingController();
final formAuthKey = new GlobalKey<FormState>();
bool isLoggedIn = false;

// Selection
var selectedInstrumentos;

