import 'package:dio/dio.dart';


class NewsService {
  final dio = Dio();

  genNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=4f808119ea5249b39ff6b21ae0caa11e&category=general');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articlesData = jsonData['articles'];
    

  }
}
