import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget get bottomSection =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(5, (index) =>
            Container(
                height: 40.0,
                width: 40,
                color: Colors.purple[300])),

      );


  Container get actionsToolbar {
    return Container(
      width: 100.0,
      color: Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List<Widget>.generate(5, (index) => Container(
            width: 60, height: 60,
            color: Colors.blue[300],
            margin: EdgeInsets.only(top: 20.0))),
      )
    );
  }

  Expanded get videoDescription => Expanded(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top: 10)),
          Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top: 10)),
          Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top: 10))
        ]),
  );

  Widget get middleSection {
    return Expanded(
        child: Row(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
      videoDescription,
      actionsToolbar,
    ]));
  }

  Widget get topSection {
    return Container(
      height: 100.0,
      padding: EdgeInsets.only(bottom: 15.0),
      color: Colors.yellow[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top section
          topSection,

          // Middle expanded
          middleSection,

          // Bottom Section
          bottomSection,
        ],
      ),
    );
  }
}
