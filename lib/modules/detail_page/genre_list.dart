import 'package:flutter/material.dart';

class GenreList extends StatelessWidget {
  const GenreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          TextButton(
            onPressed: () {},
            child: const Text('Mystery', style: TextStyle(fontSize: 12)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Romance', style: TextStyle(fontSize: 12)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Drama', style: TextStyle(fontSize: 12)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Fantasy', style: TextStyle(fontSize: 12)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Action', style: TextStyle(fontSize: 12)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Comedy', style: TextStyle(fontSize: 12)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Horror'),
          )
        ]));
  }
}
