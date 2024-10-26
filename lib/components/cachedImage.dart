import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/indicator.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.image,
    required this.alternativeImage,
  });

  final String? image;
  final String alternativeImage;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image ?? alternativeImage,
      placeholder: (context, url) => const Center(child: Indicator(color: Colors.orange,)),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      height: 200,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
