import 'package:flutter/material.dart';

class UpperMenu extends StatelessWidget {
  const UpperMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String type = 'Movie';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
          child: ElevatedButton.icon(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                backgroundColor: MaterialStateProperty.all(
                    Colors.pink.shade100.withOpacity(0.3))),
            onPressed: () {},
            icon: const Icon(
              Icons.star_border,
              size: 15,
            ),
            label: const Text('8.1',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
          ),
        ),
        const SizedBox(width: 4),
        SizedBox(
          height: 30,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                backgroundColor: MaterialStateProperty.all(
                    Colors.pink.shade100.withOpacity(0.3))),
            onPressed: () {},
            child: const Text('Korea',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
          ),
        ),
        const SizedBox(width: 4),
        SizedBox(
          height: 30,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                backgroundColor: MaterialStateProperty.all(
                    Colors.pink.shade100.withOpacity(0.3))),
            onPressed: () {},
            child: Text(type,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
          ),
        ),
        const SizedBox(width: 4),
        SizedBox(
          height: 30,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                backgroundColor: MaterialStateProperty.all(
                    Colors.pink.shade100.withOpacity(0.3))),
            onPressed: () {},
            child: const Text('2021',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
          ),
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}
