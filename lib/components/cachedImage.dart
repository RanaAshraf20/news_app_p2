import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/indicator.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image ?? "https://www.svgrepo.com/show/340721/no-image.svg",
      placeholder: (context, url) => const Center(child: Indicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      height: 200,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
