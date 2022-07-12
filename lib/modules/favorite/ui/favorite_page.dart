import 'package:flutter/material.dart';
import 'package:kdrama/modules/favorite/ui/favorite_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Drama Yang di Sukai"), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Expanded(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            FavoriteItem(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.pink),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons. '
                  'This text should max out at two lines and clip',
              author: 'Dash',
              publishDate: 'Dec 28',
              readDuration: '5 mins',
            )
          ],
        )),
      ),
    );
  }
}
