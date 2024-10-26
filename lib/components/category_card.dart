import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/shared_components/customText.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryItem});
  final CategoryModel categoryItem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            categoryName: categoryItem.categoryName,
          );
        }));
      },
      child: Container(
        height: 100,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(categoryItem.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
            child: CustomText(
          text: categoryItem.categoryName,
          size: 20,
          weight: FontWeight.bold,
          color: Colors.white,
        )),
      ),
    );
  }
}
