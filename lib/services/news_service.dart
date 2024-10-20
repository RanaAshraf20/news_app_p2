import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final dio = Dio();

  genNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=4f808119ea5249b39ff6b21ae0caa11e&category=general');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles= jsonData['articles'];
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['surlToImage'],
      );
      articlesList.add(articleModel);
    }
  }
}
