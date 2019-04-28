import 'package:flutter/material.dart';
import 'MyHomePage.dart';

class StateAliveApp extends StatefulWidget{
    _StateAliveApp createState() => _StateAliveApp();
}

class _StateAliveApp extends State<StateAliveApp> with SingleTickerProviderStateMixin{

    TabController _controller;

    @override
    void initState() {
        _controller = TabController(length: 3, vsync: this);
        super.initState();
    }

    @override
    void dispose() {
        _controller.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('keep alive app'),
                bottom: TabBar(
                    controller: _controller,
                    tabs: <Widget>[
                        Tab(
                            icon: Icon(
                                Icons.accessible
                            )
                        ),
                        Tab(
                            icon: Icon(
                                Icons.add_shopping_cart
                            ),
                        ),
                        Tab(
                            icon: Icon(
                                Icons.voice_chat
                            ),
                        )
                    ],
                ),
            ),
            body: TabBarView(
                controller: _controller,
                children: <Widget>[
                    MyHomePage(),
                    MyHomePage(),
                    MyHomePage()
                ],
            ),
        );
    }
}