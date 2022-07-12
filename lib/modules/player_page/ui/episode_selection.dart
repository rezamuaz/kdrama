import 'package:flutter/material.dart';

class EpisodeSelection extends StatelessWidget {
  const EpisodeSelection({
    Key? key,
    required this.episodeList,
  }) : super(key: key);

  final List<int> episodeList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        physics: const BouncingScrollPhysics(),
        itemCount: episodeList.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) => ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.tertiaryContainer),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
            ),
          ),
          child: Text(
            "${episodeList[index] + 1}",
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
