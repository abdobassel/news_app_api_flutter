import 'package:dio/dio.dart';
import 'package:news_api_flutter/models/articale_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=8a80ccfb232846e3abd78a75a59c4eb6');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> artlicles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var art in artlicles) {
      ArticleModel articleModel = ArticleModel(
          image: art['image_url'],
          subtitle: art['description'],
          title: art['title']);
      articlesList.add(articleModel);
    }
    return articlesList; // return after convert to future
  }
}
//https://jsonplaceholder.typicode.com/users
//https://newsapi.org/v2/top-headlines?country=eg&apiKey=8a80ccfb232846e3abd78a75a59c4eb6
/////https://newsdata.io/api/1/news?apikey=pub_32841f95a8e990f8a1ccc38daa12374beb0a3