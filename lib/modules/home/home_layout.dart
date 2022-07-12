import 'package:flutter/material.dart';
import 'package:kdrama/modules/home/ui/completed/completed_widget.dart';
import 'package:kdrama/modules/home/ui/episode_terbaru/episode_terbaru_widget.dart';
import 'package:kdrama/modules/home/ui/header_title/header_title.dart';
import 'package:kdrama/modules/home/ui/recommendation/recommendation.dart';
import 'package:kdrama/modules/widget/container_body.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ContainerBody(
        children: [
          SizedBox(height: 20),
          HeaderTitle(),
          Recommendation(),
          Divider(
            color: Colors.blueGrey,
            thickness: 1,
          ),
          EpisodeTerbaruWidget(),
          Divider(
            color: Colors.blueGrey,
            thickness: 1,
          ),
          CompletedWidget()
        ],
      ),
    );
  }
}
