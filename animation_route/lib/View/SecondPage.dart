import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.purpleAccent,
            appBar: AppBar(title: Text('SecondPage')),
            body: Center(
                child: MaterialButton(
                    child: Icon(
                        Icons.navigate_before,
                        size: 90.0,
                        color: Colors.greenAccent,
                    ),
                    onPressed: (){
                        Navigator.of(context).pop();
                    },
                )
            ),
        );
    }
}