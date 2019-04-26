import 'package:flutter/material.dart';
import './imageList.dart';

class FirstPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('图片列表')),
            body: ImageList(),
        );
    }
}