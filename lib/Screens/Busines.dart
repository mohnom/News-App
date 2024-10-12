
import 'package:flutter/material.dart';
import 'package:sss/Screens/List_view_news.dart';
import 'package:sss/service/get_news.dart';
import 'package:sss/widget/Sliver_list)catygry.dart';
import 'package:sss/widget/news_widget.dart';

class BusinesScreen extends StatelessWidget {
   BusinesScreen({super.key, required this.Caategry});
  final String Caategry;
  

 

  

  
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: CustomScrollView(
          slivers: [
            SliverListcatygry(categry:Caategry ,)
            ],
        ),
      )),
    );
  }
}

//SliverList(
    //     delegate: SliverChildBuilderDelegate(childCount:Datas.length,
    //         (context, index) {
    //   physics:BouncingScrollPhysics();

    //   return newscroll(newsscrol: Datas[index]);
    // }))