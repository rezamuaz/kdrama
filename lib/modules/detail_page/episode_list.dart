import 'package:flutter/material.dart';

class EpisodeList extends StatelessWidget {
  const EpisodeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final growableList =
        List<int>.generate(16, (int index) => index, growable: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${growableList.length.toString()} Episode',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.list,
                size: 35,
              )
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            reverse: true,
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: growableList.length,
            itemBuilder: (BuildContext context, int index) => Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Episode ${growableList[index] + 1}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const Text('Hari ini',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                )),
      ],
    );
  }
}
