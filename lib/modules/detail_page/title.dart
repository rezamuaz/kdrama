import 'package:flutter/material.dart';

class TitleDetail extends StatelessWidget {
  const TitleDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        Text('Dangshini Jamdeun Saie',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        SizedBox(
          height: 5,
        ),
        Text(
          'While You Were Sleeping',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
