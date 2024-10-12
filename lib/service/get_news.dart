import 'package:dio/dio.dart';
import 'package:sss/models/model_news_widget.dart';


class Newservice {
  final Dio dio;
  Newservice(this.dio);

  dynamic getNew({required String Type}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=33d117fe4de14f61ad622193a6af2cd9&category=$Type&country=us');
      Map thedata = response.data;
      List<dynamic> Articles = thedata["articles"];

      List<dynamic> ModelsasrticlesList = [];
      for (var artic in Articles) {
        ArticleModel articlemodels = ArticleModel(
            Uri: artic["url"],
            image: artic["urlToImage"],
            title: artic["author"],
            title2: artic["title"],
            title3: artic["description"]);

        ModelsasrticlesList.add(articlemodels);
      }

      return ModelsasrticlesList;
    } catch (e) {}
  }
}
//https://newsapi.org/v2/top-headlines?apiKey=33d117fe4de14f61ad622193a6af2cd9&category=general&country=us 