import 'package:flutter/material.dart';

class GenreList extends StatelessWidget {
  const GenreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> Genre = [
      'Mystery',
      'Romance',
      'Drama',
      'Fantasy',
      'Action',
      'Comedy',
      'Horror'
    ];
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 45,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Genre.length,
        itemBuilder: (context, index) => TextButton(
          onPressed: () {},
          child: Text(Genre[index], style: const TextStyle(fontSize: 12)),
        ),
      ),
    );
  }
}
