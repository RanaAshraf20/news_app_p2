import 'package:flutter/material.dart';
import 'package:news_app/components/cachedImage.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/shared_components/customText.dart';
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
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedImage(
              image: articleModel.image,
              alternativeImage:
                  "https://www.svgrepo.com/show/340721/no-image.svg",
            ),
          ),
          const SizedBox(height: 4),

          CustomText(
            text: articleModel.title,
            weight: FontWeight.bold,
          ), // CustomText
          const SizedBox(height: 2),
          CustomText(
            text: articleModel.subTitle ?? 'No Description Available',
            size: 16,
            weight: FontWeight.w500,
            color: Colors.grey,
// CustomText
          )
        ]));
  }
}
