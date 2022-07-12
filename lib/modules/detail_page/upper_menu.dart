import 'package:flutter/material.dart';

class UpperMenu extends StatelessWidget {
  const UpperMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String type = 'Movie';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
            child: const Text('2021',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
          ),
        ),
        const SizedBox(width: 4),
        type == 'Completed'
            ? SizedBox(
                height: 30,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.purple.shade100.withOpacity(0.3))),
                  onPressed: () {},
                  child: const Text("Completed",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                ),
              )
            : SizedBox(
                height: 30,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.blue.shade100.withOpacity(0.3))),
                  onPressed: () {},
                  child: const Text("Ongoing",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                ),
              ),
      ],
    );
  }
}
