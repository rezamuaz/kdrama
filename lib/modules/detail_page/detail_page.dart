import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kdrama/modules/detail_page/synopsis.dart';
import 'package:kdrama/modules/detail_page/episode_list.dart';
import 'package:kdrama/modules/detail_page/genre_list.dart';
import 'package:kdrama/modules/detail_page/latest_player_status.dart';
import 'package:kdrama/modules/detail_page/title.dart';
import 'package:kdrama/modules/detail_page/type.dart';
import 'package:kdrama/modules/detail_page/upper_menu.dart';
import 'package:kdrama/modules/widget/container_body.dart';

@immutable
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final String deskripsi =
      'A young woman with bad premonition dreams meets two people who suddenly develop the same ability.Nam Hong Joo lives with her mother, Yoon Moon Sun, a widow who runs a small restaurant. Jung Jae Chan, a rookie prosecutor, and his younger brother, Seung Won, move in across the street. Since Hong Joo was young, she has had the ability to see the good and bad events before they happen, however she is often unable to do anything about them. One day, Jae Chan has a strange premonition dream about an accident involving Hong Joo and Lee Yoo Beom, a ruthless attorney who used to be Jae Chan’s tutor. Jae Chan decides to interfere in the course of events and ends up saving the lives of Hong Joo and Han Woo Tak, a young police officer. When Jae Chan, Hong Joo, and Woo Tak then start having dreams about one another, they realize that their lives are now somehow entwined. But can the three discover the reason that they were brought together, and can they prevent the people closest to them from getting hurt?A young woman with bad premonition dreams meets two people who suddenly develop the same ability.Nam Hong Joo lives with her mother, Yoon Moon Sun, a widow who runs a small restaurant. Jung Jae Chan, a rookie prosecutor, and his younger brother, Seung Won, move in across the street. Since Hong Joo was young, she has had the ability to see the good and bad events before they happen, however she is often unable to do anything about them. One day, Jae Chan has a strange premonition dream about an accident involving Hong Joo and Lee Yoo Beom, a ruthless attorney who used to be Jae Chan’s tutor. Jae Chan decides to interfere in the course of events and ends up saving the lives of Hong Joo and Han Woo Tak, a young police officer. When Jae Chan, Hong Joo, and Woo Tak then start having dreams about one another, they realize that their lives are now somehow entwined. But can the three discover the reason that they were brought together, and can they prevent the people closest to them from getting hurt?';
  @override
  Widget build(BuildContext context) {
    final heightChild = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      body: SizedBox(
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    "https://res.cloudinary.com/daslgo36h/image/upload/v1654011183/samples/X4Qxqf_ouw9tf.jpg"),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: heightChild),
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
                        SizedBox(height: 10),
                        UpperMenu(),
                        // Type(),
                        SizedBox(height: 5),
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
      ),
    );
  }
}
