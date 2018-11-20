//---------------------------------------------------------------------------------//
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:precisometrologia_app/preciso-login/preciso-login-globals.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-mainview-header.dart';
//---------------------------------------------------------------------------------//

Future<String> getIDCertificado() async {

  final prefs = await SharedPreferences.getInstance();

  var dateTime = new DateTime.now();
  var dateTimeDay = DateFormat("dd").format(dateTime);
  var dateTimeMonth = new DateFormat("MM").format(dateTime);
  nowMonth = dateTimeMonth;
  var dateTimeYear = new DateFormat("yyyy").format(dateTime);
  nowYear = dateTimeYear;
  var certTimestamp = dateTimeYear.toString() + dateTimeMonth.toString() + dateTimeDay.toString();
  var certificadoIDIncompleto = certTimestamp + getPrecisoID();

  if (prefs.getString('lastDay') != dateTimeDay){certIncremental = 0;}
  else {certIncremental = certIncremental;}
  if (certIncremental >= 0 && certIncremental < 10){certIncrementalConverted = '00' + (certIncremental).toString();}
  if (certIncremental >= 10 && certIncremental < 100){certIncrementalConverted = '0' + (certIncremental).toString();}
  if (certIncremental >= 100){certIncrementalConverted = (certIncremental).toString();}
  prefs.setString('certIncremental', certIncrementalConverted);
  prefs.setString('lastDay', dateTimeDay);

  if (certIncremental+1 >= 0){certIncrementalConvertedMinus = '00' + (certIncremental + 1).toString();}
  if (certIncremental+1 >= 10){certIncrementalConvertedMinus = '0' + (certIncremental + 1).toString();}
  if (certIncremental+1 >= 100){certIncrementalConvertedMinus = (certIncremental + 1).toString();}
    prefs.setString('certIncrementalS', certIncrementalConvertedMinus);

  var certificadoID = certificadoIDIncompleto + prefs.getString('certIncremental');

  certificadoIDFormController.text = certificadoID;
  savedIncremental = prefs.getString('certIncremental');

  print(certificadoID);
  return certificadoID;
}

String getPrecisoID(){
  
  var precisoFuncionarios = [
  {"precisoID": "001", "email": "nsei@precisometrologia.com"},
  {"precisoID": "002", "email": "kleidego@hotmail.com"},
  {"precisoID": "003", "email": "dev.whiteflag@gmail.com"},
];

  precisoFuncionarios.forEach((value) {
    if(userEmail == value["email"]){
      precisoID = value["precisoID"];
    }});

  print(precisoID);
  return precisoID;
}