import 'package:flutter/material.dart';
import 'home.dart';
import 'email_view.dart';
import 'Page_view.dart';
import 'airplay_view.dart';

class BottomNavigationWidget extends StatefulWidget {
    _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

    final _navigatColor = Colors.lightBlue;
    int _currentIndex = 0;
    List<Widget> pageList = [];
    
    @override
      void initState() {
        pageList
        ..add(FirstPage())
        ..add(Page())
        ..add(Email())
        ..add(Airplay());
        super.initState();
      }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: pageList[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.home,
                            color: _navigatColor,
                        ),
                        title: Text(
                            'home',
                            style: TextStyle(color: _navigatColor),
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.pages,
                            color: _navigatColor,
                        ),
                        title: Text(
                            'pages',
                            style: TextStyle(color: _navigatColor),
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.email,
                            color: _navigatColor,
                        ),
                        title: Text(
                            'email',
                            style: TextStyle(color: _navigatColor),
                        )
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                            Icons.airplay,
                            color: _navigatColor,
                        ),
                        title: Text(
                            'airplay',
                            style: TextStyle(color: _navigatColor),
                        )
                    )
                ],
                currentIndex: _currentIndex,
                onTap: (int index){
                    setState(() {
                        _currentIndex = index;                      
                    });
                },
                type: BottomNavigationBarType.fixed,
            ),
        );
    }
}