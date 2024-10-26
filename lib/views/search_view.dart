import 'package:flutter/material.dart';
import 'package:news_app/components/customAppBar.dart';
import 'package:news_app/shared_components/text_input_field.dart';
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
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: TextInputField(
              controller: controller,
              onSubmitted: (value) {
                textQuery = value;
                setState(() {});
              },
              hintText: 'Search...',
              focusedBorderColor: Colors.orange,
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsTileListViewBuilder(
              category: 'general',
              word: textQuery,
            )
          ],
        ),
      ),
    );
  }
}
