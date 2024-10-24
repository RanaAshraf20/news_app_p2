import 'package:flutter/material.dart';
import 'package:news_app/components/customAppBar.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_tile_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(image: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(showSearchIcon: true),
         body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategorisListView(
                  categoryList: category,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              const NewsTileListViewBuilder(category: 'General')
            ],
          ),
        ));
  }
}
