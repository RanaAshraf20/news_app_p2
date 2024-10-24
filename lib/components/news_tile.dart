import 'package:flutter/material.dart';
import 'package:news_app/components/articleText.dart';
import 'package:news_app/components/cachedImage.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/web_view.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({
    required this.articleModel,
    super.key,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return WebView(
            url: articleModel.url,
          );
        }));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedImage(
                image: articleModel.image ??
                    "https://www.svgrepo.com/show/340721/no-image.svg"),
          ),
          const SizedBox(height: 4),
          ArticleText(isTitle: true, text: articleModel.title),
          const SizedBox(height: 2),
          ArticleText(
              text: articleModel.subTitle ?? 'No Description Available'),
        ],
      ),
    );
  }
}
