import 'package:flutter/material.dart';

class TitleAndInfo extends StatelessWidget {
  const TitleAndInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "While You Were Sleeping",
            style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Episode 8',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              const SizedBox(width: 10),
              Text('22 Maret 2022',
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onBackground)),
              const SizedBox(width: 10),
              Row(
                children: [
                  const Icon(
                    Icons.remove_red_eye,
                    size: 15,
                  ),
                  const SizedBox(width: 5),
                  Text("2.2 K",
                      style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.onBackground))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
