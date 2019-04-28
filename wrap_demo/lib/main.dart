import 'package:flutter/material.dart';
import './View/WrapDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'wrapApp',
            home: WrapDemo(),
        );
    }
}