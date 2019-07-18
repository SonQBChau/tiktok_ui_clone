import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/widgets/actions_toolbar.dart';
import 'package:tiktok_ui_clone/widgets/bottom_toolbar.dart';
import 'package:tiktok_ui_clone/widgets/video_description.dart';

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

  Widget get middleSection {
    return Expanded(
        child: Row(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
      VideoDescription(),
      ActionsToolbar(),
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
          BottomToolbar(),
        ],
      ),
    );
  }
}
