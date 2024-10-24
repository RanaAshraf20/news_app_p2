import 'package:flutter/material.dart';
import 'package:news_app/components/customAppBar.dart';

import 'package:news_app/widgets/news_list_tile_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: CustomScrollView(
              slivers: [
                NewsTileListViewBuilder(
                  category: categoryName,
                )
              ],
            ),
          ),
        ));
  }
}
