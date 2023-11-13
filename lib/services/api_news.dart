import 'package:dio/dio.dart';
import 'package:news_api_flutter/models/articale_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  getGeneralNews() async {
    Response response = await dio.get(
        'https://newsdata.io/api/1/news?apikey=pub_32841f95a8e990f8a1ccc38daa12374beb0a3');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> artls = jsonData['results'];

    List<ArticleModel> articlesList = [];

    for (var art in artls) {
      ArticleModel articleModel = ArticleModel(
          image: art['image_url'],
          subtitle: art['description'],
          title: art['title']);
      articlesList.add(articleModel);
      print(articlesList);
    }
  }
}
//https://jsonplaceholder.typicode.com/users
//