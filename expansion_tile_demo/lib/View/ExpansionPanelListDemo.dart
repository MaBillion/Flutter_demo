import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
    _ExpansionPanelListStateDemo createState() => _ExpansionPanelListStateDemo();
}

class _ExpansionPanelListStateDemo extends State<ExpansionPanelListDemo> {
    List<int> mlist;
    List<ExpandStateBean> expandStateList;

    _ExpansionPanelListStateDemo() {
        mlist = new List();
        expandStateList = new List();
        for(var i = 0; i < 10; i++) {
            mlist.add(i);
            expandStateList.add(ExpandStateBean(i, false));
        }
    }

    _setCurrentList(int _index, bool isOpen) {
        setState(() {
            expandStateList.forEach((item){
                if (item.index == _index) {
                    item.isOpen = !item.isOpen;
                }
            });        
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('_ExpansionPanelListStateDemo'),
            ),
            body: SingleChildScrollView(
                child: ExpansionPanelList(
                    expansionCallback: (index, bol) {
                        _setCurrentList(index, bol);
                    },
                    children: mlist.map((index) {
                        return ExpansionPanel(
                            headerBuilder: (context, isExpande){
                                return ListTile(
                                    title: Text('this is NO $index'),
                                );
                            },
                            body: ListTile(
                                title: Text('expansion no.$index'),
                            ),
                            isExpanded: expandStateList[index].isOpen
                        );
                    }).toList(),
                ),
            ),
        );
    }
}

class ExpandStateBean {
    int index;
    bool isOpen;
    ExpandStateBean(this.index, this.isOpen);
}