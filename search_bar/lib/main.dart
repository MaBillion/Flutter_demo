import 'package:flutter/material.dart';
import './View/SearchBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'search_bar',
            home: SearchBar(),
        );
    }
}