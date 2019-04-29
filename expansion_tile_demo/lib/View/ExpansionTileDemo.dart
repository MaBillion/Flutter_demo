import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('ExpansionTileDemo')),
            body: Center(
                child: ExpansionTile(
                    title: Text('ExpansionTileDemo'),
                    leading: Icon(
                        Icons.arrow_drop_down
                    ),
                    backgroundColor: Colors.white54,
                    children: <Widget>[
                        ListTile(
                            title: Text('ExpansionTileDemo'),
                            subtitle: Text('ExpansionTileDemoasdasd123123'),
                        )
                    ],
                ),
            ),
        );
    }
}