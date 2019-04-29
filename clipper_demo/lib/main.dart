import 'package:flutter/material.dart';
import './View/ClipperDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Clipper',
            home: ClipperDemo(),
            debugShowCheckedModeBanner: false,
        );
    }
}