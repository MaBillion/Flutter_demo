import 'package:flutter/material.dart';
import './View/ExpansionPanelListDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'ExpansionTileDemo',
            home: ExpansionPanelListDemo(),
            theme: ThemeData.dark(),
        );
    }
}