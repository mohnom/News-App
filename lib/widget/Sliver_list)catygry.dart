import 'package:flutter/material.dart';
import 'package:sss/service/get_news.dart';
import 'package:sss/widget/news_widget.dart';

import 'package:dio/src/dio.dart';
class SliverListcatygry extends StatefulWidget {
   SliverListcatygry({super.key,required this.categry});
   final String categry;
  

  @override
  State<SliverListcatygry> createState() => _SliverListcatygryState();

}

class _SliverListcatygryState extends State<SliverListcatygry> {
  
   List  Datas=[] ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      getGerentnews();
  }

  Future<void> getGerentnews() async {
     Datas=await Newservice(Dio()).getNew(Type: widget.categry);
     setState(() {
       
     });
  }
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount:Datas.length,
            (context, index) {
      physics:BouncingScrollPhysics();

      return newscroll(newsscrol: Datas[index]);
    }));
  }
}
