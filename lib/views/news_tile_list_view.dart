import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/components/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
