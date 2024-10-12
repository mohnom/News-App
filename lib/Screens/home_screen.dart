
import 'package:flutter/material.dart';
import 'package:sss/models/model_news_widget.dart';
import 'package:sss/models/model_rating.dart';
import 'package:sss/service/get_news.dart';
import 'package:sss/widget/new_list_veiw_builder.dart';
import 'package:sss/widget/widget_rating.dart';
import 'List_view_news.dart';
import 'List_view_catgry.dart';
import 'package:sss/Screens/List_view_news.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
//The Widgets To build the home screen
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.purple])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News ',
                  style: TextStyle(),
                ),
                Text(
                  'Cloud',
                  style: TextStyle(color: Colors.lightBlue),
                )
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Categry_Listview()),//veiw the Categry in the screen
            SliverToBoxAdapter(
                child: SizedBox(
              height: 20,
            )),
            News_Listview()// TO veiw the News in the screen and do scroll to news
          ],
        ),
      ),
    );
  }
}
