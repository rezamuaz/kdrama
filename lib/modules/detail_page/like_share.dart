import 'package:flutter/material.dart';

class LikeShare extends StatelessWidget {
  const LikeShare({Key? key, required this.like, required this.likeAction})
      : super(key: key);

  final bool like;
  final Function likeAction;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.95, -0.55),
      child: SizedBox(
          width: 40,
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FloatingActionButton(
                  backgroundColor: Colors.white,
                  foregroundColor: like ? Colors.pink.shade300 : Colors.black,
                  onPressed: () {
                    likeAction();
                  },
                  child: const Icon(Icons.favorite)),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                foregroundColor: Colors.amberAccent,
                highlightElevation: 2,
                child: const Icon(
                  Icons.share,
                  color: Colors.black54,
                  size: 20,
                ),
              )
            ],
          )),
    );
  }
}
