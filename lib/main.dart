import 'package:flutter/material.dart';
import 'package:sss/Screens/home_screen.dart';
import 'Screens/Splash_screen.dart';
import 'package:sss/service/get_news.dart';

void main() {
  runApp(news_app()); //To run the application
}

class news_app extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());//veiw the Home page
  }
}
 

//Api is 33d117fe4de14f61ad622193a6af2cd98

 