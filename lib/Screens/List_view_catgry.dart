import 'package:flutter/material.dart';
import 'package:sss/models/model_rating.dart';
import 'package:sss/Screens/home_screen.dart';
import 'package:sss/widget/widget_rating.dart';
//List veiw of the categrys up the screen
class Categry_Listview extends StatelessWidget {
  Categry_Listview({super.key});

  final List<modelscrol> scrols = [
    modelscrol(Imagescrol: 'assets/business.jpg', name: 'Business',type: 'business'),//model to requst the datas of categry
    modelscrol(Imagescrol: 'assets/entertaiment.avif', name: 'Entertaiment',type: 'entertainment'),
    // modelscrol(Imagescrol: 'assets/general.png', name: 'General'),
    modelscrol(Imagescrol: 'assets/science.avif', name: 'Science',type: 'science'),
    modelscrol(Imagescrol: 'assets/health.avif', name: 'Health',type: 'health'),
    modelscrol(Imagescrol: 'assets/sports.jpg', name: 'Sport',type: 'sports'),
    modelscrol(Imagescrol: 'assets/technology.jpeg', name: 'technology',type: 'technology'),
  ];
  //build the listveiw of the categry to do scroll
  @override
  Widget build(BuildContext Context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: scrols.length,
        itemBuilder: (context, index) {
          return scroll(scrol2: scrols[index]);
        },
      ),
    );
  }
}
