import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/indicator.dart';
import 'package:news_app/widgets/news_tile_list_view.dart';

class NewsTileListViewBuilder extends StatefulWidget {
  const NewsTileListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsTileListViewBuilder> createState() =>
      _NewsTileListViewBuilderState();
}

class _NewsTileListViewBuilderState extends State<NewsTileListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService().generalNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('oops there is a problem, try later!')),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(child:Indicator()),
          );
        }
      },
    );
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsTileListView(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child:
    //                 Center(child: Text('oops there is a problem, try later!')),
    //           );
  }
}
