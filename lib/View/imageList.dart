import 'package:flutter/material.dart';
import './detail.dart';

class ImageList extends StatelessWidget {

    final List<Map<String, String>> list = [{
        'img': 'images/lv_01.jpg',
        'title': '深度对望',
        'description': '深度对望深度对望'
    }, {
        'img': 'images/lv_02.jpg',
        'title': '圣诞气氛',
        'description': '圣诞气氛圣诞气氛'
    }, {
        'img': 'images/lv_03.jpg',
        'title': '深色回忆',
        'description': '深色回忆深色回忆'
    }, {
        'img': 'images/lv_04.jpg',
        'title': '恬静优美',
        'description': '恬静优美恬静优美'
    }, {
        'img': 'images/lv_05.jpg',
        'title': '年轻风尚',
        'description': '年轻风尚年轻风尚'
    }, {
        'img': 'images/lv_06.jpg',
        'title': '喜笑颜开',
        'description': '喜笑颜开喜笑颜开'
    }, {
        'img': 'images/lv_07.jpg',
        'title': '深色情调',
        'description': '深色情调深色情调'
    }, {
        'img': 'images/lv_08.jpg',
        'title': '大方得体',
        'description': '大方得体大方得体'
    }, {
        'img': 'images/lv_09.jpg',
        'title': '温柔体贴',
        'description': '温柔体贴温柔体贴'
    }, {
        'img': 'images/lv_10.jpg',
        'title': '一拜天地',
        'description': '一拜天地一拜天地'
    }, {
        'img': 'images/lv_11.jpg',
        'title': '深吻',
        'description': '深吻深吻'
    }, {
        'img': 'images/lv_12.jpg',
        'title': '轻吻',
        'description': '轻吻轻吻'
    }, {
        'img': 'images/lv_13.jpg',
        'title': '职场精英',
        'description': '职场精英职场精英'
    }, {
        'img': 'images/lv_14.jpg',
        'title': '互相呵护',
        'description': '互相呵护互相呵护'
    }, {
        'img': 'images/lv_15.jpg',
        'title': '夫妻对拜',
        'description': '夫妻对拜夫妻对拜'
    }, {
        'img': 'images/lv_16.jpg',
        'title': '古风',
        'description': '古风古风'
    }, {
        'img': 'images/lv_17.jpg',
        'title': '温馨之家',
        'description': '温馨之家温馨之家'
    }];

    @override
    Widget build(BuildContext context) {
        return Card(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(list[index]['title']),
                        subtitle: Text(list[index]['description']),
                        leading: Image.asset(
                            list[index]['img'],
                            width: 110.0,
                            height: 80.0,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Detail(item: list[index])
                            ));
                        },
                    );
                },
            )
        ); 
    }
}
