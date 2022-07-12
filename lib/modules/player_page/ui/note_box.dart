import 'package:flutter/material.dart';

class NoteBox extends StatelessWidget {
  const NoteBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.tertiaryContainer,
      padding: const EdgeInsets.all(20.0),
      child: Flex(direction: Axis.horizontal, children: [
        Flexible(
          child: Text(
            'Jika streaming tidak mau jalan atau loading terus coba ganti "resolusi" pada menu diatas',
            softWrap: true,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              letterSpacing: 0.1,
              wordSpacing: 0.1,
              height: 1.2,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
      ]),
    );
  }
}
