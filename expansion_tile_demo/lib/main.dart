import 'package:flutter/material.dart';
import './View/ExpansionTileDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'ExpansionTileDemo',
            home: ExpansionTileDemo(),
            theme: ThemeData.dark(),
        );
    }
}