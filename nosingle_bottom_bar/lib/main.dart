import 'package:flutter/material.dart';
import './View/Home.dart';

void main() => runApp(
    MyApp(),
);

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'nosingle_bottom_bar',
            home: Home(),
            theme: ThemeData(
                primarySwatch: Colors.lightBlue
            ),
        );
    }
}