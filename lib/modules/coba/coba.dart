import 'package:flutter/material.dart';
import 'package:kdrama/modules/detail_page/like_share.dart';
import 'package:kdrama/modules/player_page/ui/comments_box.dart';

class Coba extends StatefulWidget {
  Coba({Key? key}) : super(key: key);

  @override
  State<Coba> createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  bool like = false;
  void likeAction() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('test')),
        body: Container(
            decoration: const BoxDecoration(color: Colors.amber),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Container())
              ]),
            )),
      ),
    );
  }
}
