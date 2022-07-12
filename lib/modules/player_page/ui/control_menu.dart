import 'package:flutter/material.dart';

class ControlMenu extends StatelessWidget {
  final Function handleValue;
  final String changeValue;
  const ControlMenu(
      {Key? key, required this.handleValue, required this.changeValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: const [
                  Icon(Icons.download_sharp),
                  SizedBox(height: 5),
                  Text("Download")
                ]),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: const [
                  Icon(Icons.download_sharp),
                  SizedBox(height: 5),
                  Text("Download")
                ]),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: const [
                  Icon(Icons.share),
                  SizedBox(height: 5),
                  Text("Share")
                ]),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: const [
                  Icon(Icons.flag),
                  SizedBox(height: 5),
                  Text("Report")
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
