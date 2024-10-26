import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/components/indicator.dart';
import 'package:news_app/views/news_tile_list_view.dart';

class NewsTileListViewBuilder extends StatefulWidget {
  const NewsTileListViewBuilder({super.key, required this.category, this.word});
  final String category;
  final String? word;

  @override
  State<NewsTileListViewBuilder> createState() =>
      _NewsTileListViewBuilderState();
}

class _NewsTileListViewBuilderState extends State<NewsTileListViewBuilder> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  void didUpdateWidget(covariant NewsTileListViewBuilder oldWidget) {
    if (widget.word != oldWidget.word) {
      getNews();
    }
    super.didUpdateWidget(oldWidget);
  }

  void getNews() {
    future =
        NewsService().generalNews(category: widget.category, word: widget.word);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(child: Center(child: Indicator(color: Colors.orange,)));
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
                child:
                    Text('Oops, there is a problem. Please try again later!')),
          );
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return NewsTileListView(articles: snapshot.data!);
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: Text('No results found. Try another search!')),
          );
        }
      },
    );
  }
}
