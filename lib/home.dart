import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/widgets/actions_toolbar.dart';
import 'package:tiktok_ui_clone/widgets/bottom_toolbar.dart';
import 'package:tiktok_ui_clone/widgets/video_description.dart';




class MyHomePage extends StatelessWidget {
  Widget get bottomSection => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List<Widget>.generate(5, (index) => Container(height: 40.0, width: 40, color: Colors.purple[300])),
  );

  Widget get middleSection {
    return Expanded(
        child: Row(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
          VideoDescription(),
          ActionsToolbar(),
        ]));
  }

  Widget get topSection => Container(
    height: 100.0,
    padding: EdgeInsets.only(bottom: 15.0),
    alignment: Alignment(0.0, 1.0),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Following'),
          Container(
            width: 15.0,
          ),
          Text('For you',
              style: TextStyle(
                  fontSize: 17.0, fontWeight: FontWeight.bold))
        ]),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
          child: Image.network(
            "https://images.unsplash.com/photo-1503832725-c34828469568?ixlib=rb-1.2.1&auto=format&fit=crop&w=1577&q=80",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          ),
          Column(
            children: <Widget>[
              // Top section
              topSection,

              // Middle expanded
              middleSection,

              // Bottom Section
              BottomToolbar(),
            ],
          ),
        ],
      ),
    );
  }
}