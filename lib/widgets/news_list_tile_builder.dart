import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile_list_view.dart';


class  NewsTileListViewBuilder extends StatelessWidget {
  const NewsTileListViewBuilder({super.key});

 
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService().generalNews(),
      builder: (context, snapshot) {
        return NewsTileListView(articles: snapshot.data ?? []);
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
