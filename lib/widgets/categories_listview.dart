import 'package:flutter/material.dart';
import 'package:news_api_flutter/models/category_model.dart';
import 'package:news_api_flutter/widgets/category_card.dart';

class CatigoriesListView extends StatelessWidget {
  const CatigoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/images/ff.png", categoryName: 'Flutter'),
    CategoryModel(image: "assets/images/ff.png", categoryName: 'Flutter'),
    CategoryModel(image: "assets/images/ff.png", categoryName: 'Flutter'),
    CategoryModel(image: "assets/images/ff.png", categoryName: 'Flutter'),
    CategoryModel(image: "assets/images/ff.png", categoryName: 'Flutter'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
        itemCount: categories.length,
      ),
    );
  }
}
