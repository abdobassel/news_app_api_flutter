import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_api_flutter/screens/home_news.dart';
import 'package:news_api_flutter/services/api_news.dart';

void main() {
  NewsService(dio: Dio()).getGeneralNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
