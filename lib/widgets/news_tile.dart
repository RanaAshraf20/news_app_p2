import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/web_view.dart';
import 'package:news_app/widgets/indicator.dart';

class NewsTile extends StatelessWidget {
  NewsTile({
    required this.articleModel,
    super.key,
  });
  ArticleModel articleModel;
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
            child: CachedNetworkImage(
              imageUrl: articleModel.image ??
              'https://t4.ftcdn.net/jpg/07/95/29/45/240_F_795294547_gaBzWLhkAYBSz1ZUIZssHhvzGzstNmHK.jpg',
              placeholder: (context, url) => const Center(
                child: Indicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            articleModel.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            articleModel.subTitle ?? '',
            style: const TextStyle(
                fontSize: 16, color: Colors.grey),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}

