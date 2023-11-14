import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_api_flutter/models/articale_model.dart';
import 'package:news_api_flutter/services/api_news.dart';

class News_Tile extends StatefulWidget {
  News_Tile({
    super.key,
  });

  @override
  State<News_Tile> createState() => _News_TileState();
}

class _News_TileState extends State<News_Tile> {
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    getNewsFinal();
  }

  Future<void> getNewsFinal() async {
    articles = await NewsService(dio: Dio()).getGeneralNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: articles.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 16, right: 16),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.asset(
                          articles[i].image ?? 'assets/images/me.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    maxLines: 2,
                    articles[i].title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    maxLines: 2,
                    articles[i].subtitle ?? 'Null DEscriPtion',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
