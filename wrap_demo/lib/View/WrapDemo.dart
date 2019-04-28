import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
    _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
    List<Widget> list;

    @override
    void initState() {
        list = List<Widget>()..add(buildAddButton());
        super.initState();
    }

    @override
    Widget build(BuildContext build) {
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;

        return Scaffold(
            appBar: AppBar(
                title: Text('wrap_demo'),
            ),
            body: Center(
                child: Opacity(
                    opacity: 0.8,
                    child: Container(
                        height: height/2,
                        width: width,
                        color: Colors.grey,
                        child: Wrap(
                            children: list,
                            spacing: 26.0,
                        ),
                    ),
                ),
            ),
        );
    }

    Widget buildAddButton() {
        return GestureDetector(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                    height: 80.0,
                    width: 80.0,
                    color: Colors.yellow,
                    child: Icon(
                        Icons.add
                    ),
                ),
            ),
            onTap: (){
                if (list.length < 9) {
                    setState(() {
                        list.insert(list.length - 1, buildPhote());                      
                    });
                }
            },
        );
    }

    Widget buildPhote() {
        return Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
                height: 80.0,
                width: 80.0,
                color: Colors.yellowAccent,
                child: Text('photo'),
            ),
        );
    }
}