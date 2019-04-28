import 'package:flutter/material.dart';
import 'MockData.dart';

class SearchBarDelegate extends SearchDelegate<String> {
    @override
    List<Widget> buildActions(BuildContext context) {
        return [
            IconButton(
                icon: Icon(
                    Icons.delete
                ),
                onPressed: (){
                    query = "";
                },
            )
        ];
    }

    @override
    Widget buildLeading(BuildContext context) {
        return IconButton(
            icon: AnimatedIcon(
                icon: AnimatedIcons.menu_arrow,
                progress: transitionAnimation,
            ),
            onPressed: (){
                close(context, null);
            },
        );
    }

    @override
    Widget buildResults(BuildContext context) {
        return Center(
            child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: Text(query),
            )
        );
    }

    @override
    Widget buildSuggestions(BuildContext context) {
        final suggestionList = query.isEmpty ?
        recentSuggest :
        searchList.where((input) => input.startsWith(query)).toList();

        return ListView.builder(
            itemCount: suggestionList.length,
            itemBuilder: (context, index) => ListTile(
                title: RichText(
                    text: TextSpan(
                        text: suggestionList[index].substring(0, query.length),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700
                        ),
                        children: [
                            TextSpan(
                                text: suggestionList[index].substring(query.length),
                                style: TextStyle(
                                    color: Colors.grey
                                )
                            )
                        ]
                    ),
                ),
            ),
        );
    }
}