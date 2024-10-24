import 'package:flutter/material.dart';

class ArticleText extends StatelessWidget {
  final String text;
  final bool isTitle;

  const ArticleText({
    super.key,
    required this.text,
    this.isTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: isTitle ? 18 : 16,
          fontWeight: isTitle ? FontWeight.bold : FontWeight.w500,
          color: isTitle ? Colors.black : Colors.grey),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
