import 'package:flutter/material.dart';
import './View/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'splash_screen',
            home: SplashScreen(),
        );
    }
}