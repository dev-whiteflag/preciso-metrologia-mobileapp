//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basic-info.dart';
import 'package:precisometrologia_app/offline-database/preciso-modelos/preciso-base/preciso-basic-end-data.dart';
import 'package:precisometrologia_app/preciso-mainview/preciso-mainview-header.dart';
//---------------------------------------------------------------------------------//

class PrecisoMainListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: new ListView.builder(
            itemCount: 1,
            addRepaintBoundaries: true,
            controller: new ScrollController(),
            itemBuilder: (context, index) {
              return Column(children: <Widget>[
                Container(
                    margin:
                        EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                    child: PrecisoMainViewHeader()),
                Divider(),
                Container(
                    margin:
                        EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                    child: PrecisoBasicInfo()),
                Divider(),
                Container(
                    margin:
                        EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                    child: PrecisoBasicEndData()),
              ]);
            }));
  }
}
