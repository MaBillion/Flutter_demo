import 'package:flutter/material.dart';
import './View/BottomNavigationWidget.dart';

void main() {
    runApp(
        MaterialApp(
            title: '恋爱Demo',
            theme: ThemeData.light(),
            home: BottomNavigationWidget(),
        )
    );
}