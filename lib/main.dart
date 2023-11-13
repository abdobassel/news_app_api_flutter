import 'package:flutter/material.dart';
import 'package:news_api_flutter/screens/home_news.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
