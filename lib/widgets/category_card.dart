import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryItem});
  final CategoryModel categoryItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 170,
   
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image:  DecorationImage(
            image: AssetImage(categoryItem.image), fit: BoxFit.fill),
      ),
      child:  Center(
        child: Text(
          categoryItem.categoryName,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
