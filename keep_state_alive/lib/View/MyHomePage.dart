import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
    _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> with AutomaticKeepAliveClientMixin {
    int _counter = 0;

    @override
    bool get wantKeepAlive => true;

    void _incrementCount() {
        setState(() {
            _counter++;          
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('加一'),
                        Text('$_counter')
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: (){
                    _incrementCount();
                },
                tooltip: '加一',
                child: Icon(
                    Icons.add
                ),
            ),
        );
    }
}