//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
//---------------------------------------------------------------------------------//

class PrecisoSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
  }
}
