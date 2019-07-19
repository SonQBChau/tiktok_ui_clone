import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/home.dart';
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
        // Uncomment in phase 3 to apply white to text
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      home: MyHomePage(),
    );
  }
}


