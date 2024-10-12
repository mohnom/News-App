// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Screens/List_view_news.dart';
// import 'package:news_app/models/model_news_widget.dart';
// import 'package:news_app/service/get_news.dart';
// import 'package:news_app/widget/news_widget.dart';

// class News_ListviewBuilder extends StatefulWidget {
//   News_ListviewBuilder({super.key});

//   @override
//   State<News_ListviewBuilder> createState() => _News_ListviewBuilderState();
// }

// class _News_ListviewBuilderState extends State<News_ListviewBuilder> {
// var  future =
//   @override
//   void initState() async{
//     // TODO: implement initState
//     super.initState();
//     future  ;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<ArticleModel>>(
//         future: future,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return News_Listview(Datas: snapshot.data!);
//           } else if (snapshot.hasError) {
//             return SliverToBoxAdapter(child: Text('''
//         Errors
//   Please open the app again '''));
//           } else {
//             return SliverToBoxAdapter(
//               child: CircularProgressIndicator(),
//             );
//           }
//         });
//   }
// }
