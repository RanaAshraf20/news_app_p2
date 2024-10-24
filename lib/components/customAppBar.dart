import 'package:flutter/material.dart';
import 'package:news_app/views/search_view.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, this.showSearchIcon = false});

  final bool showSearchIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      leading: showSearchIcon
          ? IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SearchView();
                }));
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            )
          : null,
      title: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'News',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Clouds',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
