import 'package:flutter/material.dart';
import './View/StateAliveApp.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'state alive app',
            home: StateAliveApp(),
            theme: ThemeData(
                backgroundColor: Colors.red
            ),
        );
    }
}