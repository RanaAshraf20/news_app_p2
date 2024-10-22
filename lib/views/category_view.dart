import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/news_list_tile_builder.dart';

class CategoryView extends StatelessWidget {
   const CategoryView({super.key, required this.categoryName});
final String categoryName;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Center(
  child: CustomScrollView(
    slivers: [
     NewsTileListViewBuilder(category:categoryName,)
    ],
  ),
)
    );
  }
}
