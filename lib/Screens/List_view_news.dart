import 'package:dio/src/dio.dart';
import 'package:flutter/material.dart';
import 'package:sss/service/get_news.dart';
import 'package:sss/widget/news_widget.dart';


class News_Listview extends StatefulWidget {
  News_Listview({super.key});

  @override
  State<News_Listview> createState() => _News_ListviewState();
}

//To request the data from the internet
class _News_ListviewState extends State<News_Listview> {
  List Datas = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGerentnews();
  }

//The datas from internet
  Future<void> getGerentnews() async {
    Datas = await Newservice(Dio()).getNew(Type: 'general');
    setState(() {});
  }

  // Build the veiw of the one new to show in the screen
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: Datas.length,
            (context, index) {
      physics:
      BouncingScrollPhysics();

      return newscroll(newsscrol: Datas[index]);
    }));
  }
}
