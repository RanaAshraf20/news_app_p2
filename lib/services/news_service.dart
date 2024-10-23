import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> generalNews(
      {required String category, String? word}) async {
    try {
      String url =
          'https://newsapi.org/v2/top-headlines?apiKey=59961213826347ddbf77a740e1f113d1&category=$category';
      if (word != null && word.isNotEmpty) {
        url += '&q=$word';
      }

      Response response =await dio.get(url);

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
