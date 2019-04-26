import 'package:flutter/material.dart';
import './View/FirstPage.dart';

void main() => runApp(
    MyApp()
);

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'animation_route',
            home: FirstPage(),
        );
    }
}