import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kdrama/modules/detail_page/like_share.dart';
import 'package:kdrama/modules/detail_page/rate_views.dart';
import 'package:kdrama/modules/detail_page/synopsis.dart';
import 'package:kdrama/modules/detail_page/episode_list.dart';
import 'package:kdrama/modules/detail_page/genre_list.dart';
import 'package:kdrama/modules/detail_page/latest_player_status.dart';
import 'package:kdrama/modules/detail_page/title.dart';
import 'package:kdrama/modules/detail_page/type.dart';
import 'package:kdrama/modules/detail_page/upper_menu.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool like = false;
  void likeAction() {
    setState(() {
      like = !like;
    });
  }

  final String deskripsi =
      'A young woman with bad premonition dreams meets two people who suddenly develop the same ability.Nam Hong Joo lives w';

  @override
  Widget build(BuildContext context) {
    final heightChild = MediaQuery.of(context).size.height * 0.38;

    print(like.toString());
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  "https://res.cloudinary.com/daslgo36h/image/upload/v1654011183/samples/X4Qxqf_ouw9tf.jpg"),
        ),
        LikeShare(
          like: like,
          likeAction: likeAction,
        ),
        Positioned(
          top: heightChild,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Theme.of(context).colorScheme.background,
                      Theme.of(context).colorScheme.background
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
                  child: Column(
                    children: const [
                      TitleDetail(),
                      SizedBox(height: 5),
                      RateViews(),
                      SizedBox(height: 10),
                      UpperMenu(),
                      SizedBox(height: 10),
                      Type(),
                      SizedBox(height: 15),
                      LatestPlayerStatus(),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background),
                  child: Column(
                    children: [
                      const GenreList(),
                      Synopsis(deskripsi: deskripsi),
                      const EpisodeList(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
