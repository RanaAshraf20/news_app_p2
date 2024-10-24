import 'package:flutter/material.dart';
import 'package:news_app/components/customAppBar.dart';
import 'package:news_app/widgets/news_list_tile_builder.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final controller = TextEditingController();

  String? textQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar() ,
       body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: TextField(
                onChanged: (value) {
                  textQuery = value;
                  setState(() {
                    
                  });
                },
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orange))),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ), 
            NewsTileListViewBuilder(category: 'general',word: textQuery,)
          ],
        ),
      ),
    );
  }
}
