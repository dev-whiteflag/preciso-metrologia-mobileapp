//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:device_info/device_info.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

import 'package:precisometrologia_app/preciso-login/preciso-login-splashscreen.dart';
import 'package:precisometrologia_app/preciso-login/preciso-login-main.dart';
import 'package:precisometrologia_app/preciso-login/preciso-login-globals.dart';
import 'package:precisometrologia_app/preciso-mainview/cert_main.dart';
//---------------------------------------------------------------------------------//

class ActiveUser {
  String userUUID;
  String userEmail;
  String userPrecisoID;
  bool userAuth;
}

Future<List<String>> getDeviceDetails() async {
    String deviceName;
    String deviceVersion;
    String identifier;
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceName = build.model;
        deviceVersion = build.version.toString();
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        identifier = data.identifierForVendor; //UUID for iOS
      }
    } on PlatformException {
      print('Failed to get platform version');
    }

//if (!mounted) return;
return [deviceName, deviceVersion, identifier];
}

Widget handleCurrentScreen() {
    return new StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return new PrecisoSplashScreen();
        } else {
          if (snapshot.hasData) {
            userEmail = snapshot.data.email.toString();
            userUUID = snapshot.data.uid.toString();
            return new MainCertWindow(uuid: snapshot.data.uid);
          }
          return new PrecisoLoginScreen();
        }
      }
    );
}

class LoginAuth{
  final FirebaseAuth auth = FirebaseAuth.instance;
  var isLoggedIn = false;
  ActiveUser activeUser;
  
  Future<FirebaseUser> handleSignInEmail(String email, String password) async {
    try{
    final FirebaseUser user = await auth.signInWithEmailAndPassword(email: email, password: password);
    final FirebaseUser currentUser = await auth.currentUser();
    
    print('signInEmail succeeded: $user');
    isLoggedIn = true;
    return user;
    } on PlatformException catch(e){
      print(e);
    } 
  }

Future<FirebaseUser> handleSignUp(email, password) async {
    final FirebaseUser user = await auth.createUserWithEmailAndPassword(email: email, password: password);
    assert (user != null);
    assert (await user.getIdToken() != null);
    return user;
  }
}