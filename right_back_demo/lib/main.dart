import 'package:flutter/material.dart';
import './View/CupertinoDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext build) {
        return MaterialApp(
            title: 'CupertinoDemo',
            home: CupertinoDemo(),
        );
    }
}