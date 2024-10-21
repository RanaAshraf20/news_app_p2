// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';

// class NewsTileListView extends StatefulWidget {
//   const NewsTileListView({
//     super.key,
//   });

//   @override
//   State<NewsTileListView> createState() => _NewsTileListViewState();
// }

// class _NewsTileListViewState extends State<NewsTileListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService().generalNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return NewsTile(
//                   articleModel: articles[index],
//                 );
//               },
//             ),
//           );
//   }
// }
