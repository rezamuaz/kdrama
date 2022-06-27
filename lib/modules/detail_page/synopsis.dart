import 'package:flutter/material.dart';

class Synopsis extends StatefulWidget {
  const Synopsis({
    Key? key,
    required this.deskripsi,
  }) : super(key: key);

  final String deskripsi;

  @override
  State<Synopsis> createState() => _DetailInfoState();
}

class _DetailInfoState extends State<Synopsis> {
  String firstHalf = "";
  String secondHalf = "";
  bool _show = false;
  void handleShow() {
    setState(() {
      _show = !_show;
    });
  }

  @override
  void initState() {
    super.initState();

    if (widget.deskripsi.length > 250) {
      firstHalf = widget.deskripsi.substring(0, 250);
      secondHalf = widget.deskripsi.substring(50, widget.deskripsi.length);
    } else {
      firstHalf = widget.deskripsi;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.decelerate,
      duration: const Duration(milliseconds: 500),
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : Column(
              children: <Widget>[
                const Text(
                  'Synopsis',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  _show ? (firstHalf + secondHalf) : ("$firstHalf..."),
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 14, letterSpacing: 0.1, wordSpacing: 0.1),
                ),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton.icon(
                        onPressed: () {
                          handleShow();
                        },
                        label: Text(_show ? "Less" : "More"),
                        icon:
                            Icon(_show ? Icons.expand_less : Icons.expand_more),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
