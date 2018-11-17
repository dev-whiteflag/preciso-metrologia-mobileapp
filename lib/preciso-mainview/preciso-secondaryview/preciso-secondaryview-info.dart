//---------------------------------------------------------------------------------//
import 'package:flutter/material.dart';
//---------------------------------------------------------------------------------//
class PrecisoSecondaryViewInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      AppBar(
        title: Text("Configurações"),
      ),
      Expanded(
          child: ListView.builder(
              itemCount: 1,
              addRepaintBoundaries: true,
              controller: new ScrollController(),
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Preciso Metrologia',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 30.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text(
                            'v1.0',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 12.0),
                          ),
                        ),
                      ]),
                  Divider(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Modo Escuro',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Text(
                              'Muda as Cores do Aplicativo para Escuras.',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0),
                            ),
                          ],
                        )),
                        Switch(
                          value: true,
                        ),
                      ],
                    ),
                  )
                ]);
              }))
    ]));
  }
}
