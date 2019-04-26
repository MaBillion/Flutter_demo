import 'package:flutter/material.dart';
import 'EachView.dart';

class Home extends StatefulWidget {
    _Home createState() => _Home();
}

class _Home extends State<Home> {

    List<Widget> _eachView = [];
    int _index = 0;

    @override
    void initState() {
        _eachView
        ..add(EachView('First Page'))
        ..add(EachView('Second Page'));
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: _eachView[_index]
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return EachView('new Page');
                    }));
                },
                tooltip: 'button',
                child: Icon(
                    Icons.add,
                    color: Colors.white,
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
                color: Colors.lightBlue,
                shape: CircularNotchedRectangle(),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        IconButton(
                            icon: Icon(
                                Icons.accessible
                            ),
                            color: Colors.white,
                            onPressed: (){
                                setState(() {
                                    _index = 0;
                                });
                            },
                        ),
                        IconButton(
                            icon: Icon(
                                Icons.wb_sunny
                            ),
                            color: Colors.white,
                            onPressed: (){
                                setState(() {
                                    _index = 1;                                  
                                });
                            },
                        )
                    ],
                ),
            ),
        );
    }
}