import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
  
    final filteredArticles =
        articles.where((article) => article.title != "[Removed]").toList();

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: filteredArticles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: NewsTile(
              articleModel: filteredArticles[index],
            ),
          );
        },
      ),
    );
  }
}
