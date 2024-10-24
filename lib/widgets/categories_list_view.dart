import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/components/category_card.dart';

class CategorisListView extends StatelessWidget {
  CategorisListView({super.key, required this.categoryList});
  List<CategoryModel> categoryList = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: CategoryCard(
                categoryItem: categoryList[index],
              ),
            );
          }),
    );
  }
}
