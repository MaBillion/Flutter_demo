import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

    final Map<String, String> item;
    Detail({Key key, @required this.item}):super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('详情页')),
            body: Center(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        children: <Widget>[
                            Text(
                                '${item['title']}',
                                style: TextStyle(
                                    fontSize: 32.0,
                                    height: 1.4
                                ),
                            ),
                            Text(
                                '${item['description']}',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    height: 1.8
                                ),
                            ),
                            Image.asset(
                                '${item['img']}',
                            )
                    ],)
                ),
            )
        );
    }
}