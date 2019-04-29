import 'package:flutter/material.dart';
import 'BottomClipperTest.dart';

class ClipperDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('clipper_demo')
            ),
            body: Column(
                children: <Widget>[
                    ClipPath(
                        clipper: BottomClipperTest(),
                        child: Container(
                            color: Colors.purple,
                            height: 200.0,
                        ),
                    )
                ],
            ),
        );
    }
}