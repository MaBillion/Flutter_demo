import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'CustomRoute.dart';

class FirstPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.yellowAccent,
            appBar: AppBar(title: Text('FirstPage')),
            body: Center(
                child: MaterialButton(
                    child: Icon(
                        Icons.navigate_next,
                        size: 90.0,
                        color: Colors.lightBlue,
                    ),
                    onPressed: (){
                        Navigator.of(context).push(CustomRoute(SecondPage()));
                    },
                )
            ),
        );
    }
}