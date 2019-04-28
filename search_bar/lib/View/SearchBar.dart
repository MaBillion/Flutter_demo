import 'package:flutter/material.dart';
import 'SearchBarDelegate.dart';

class SearchBar extends StatefulWidget {
    _SearchBar createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('SearchBar'),
                actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: (){
                            showSearch(context: context, delegate: SearchBarDelegate());
                        },
                    )
                ],
            ),
            body: Center(
                child: Text('SearchBar'),
            ),
        );
    }
}