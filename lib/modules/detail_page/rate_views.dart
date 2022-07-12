import 'package:flutter/material.dart';

class RateViews extends StatelessWidget {
  const RateViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
          child: TextButton.icon(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)))),
            onPressed: () {},
            icon: Icon(
              Icons.star,
              size: 15,
              color: Colors.yellow[700],
            ),
            label: Text('8.1',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground)),
          ),
        ),
        SizedBox(
          height: 30,
          child: TextButton.icon(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)))),
            onPressed: () {},
            icon: Icon(
              Icons.remove_red_eye_outlined,
              size: 15,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            label: Text('500 K',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground)),
          ),
        ),
      ],
    );
  }
}
