import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/player_page/bloc/player_bloc.dart';
import 'package:kdrama/modules/player_page/repository/model/comment.dart';
import 'package:kdrama/modules/player_page/repository/model/player_model.dart';
import 'package:kdrama/modules/player_page/ui/better_player.dart';
import 'package:kdrama/modules/player_page/ui/comments_box.dart';
import 'package:kdrama/modules/player_page/ui/control_menu.dart';
import 'package:kdrama/modules/player_page/ui/episode_selection.dart';
import 'package:kdrama/modules/player_page/ui/note_box.dart';
import 'package:kdrama/modules/player_page/ui/title_and_info.dart';

class PlayerLayout extends StatefulWidget {
  const PlayerLayout({Key? key}) : super(key: key);

  @override
  State<PlayerLayout> createState() => _PlayerLayoutState();
}

class _PlayerLayoutState extends State<PlayerLayout> {
  late BetterPlayerController _betterPlayerController;
  String initialData = "";

  void res() {
    setState(() {
      initialData =
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
    });
    resetPlayer();
  }

  void initPlayer() async {
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      initialData,
    );
    BetterPlayerConfiguration betterPlayerConfiguration =
        const BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
      autoDispose: false,
      autoPlay: true,
      looping: true,
      fullScreenByDefault: false,
      deviceOrientationsOnFullScreen: [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ],
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(betterPlayerDataSource);
  }

  void disposePlayer() {
    _betterPlayerController.dispose();
  }

  void resetPlayer() {
    disposePlayer();
    initPlayer();
  }

  @override
  void initState() {
    initPlayer();
    super.initState();
  }

  Widget _portaitMode(comments) {
    final episodeList =
        List<int>.generate(16, (int index) => index, growable: true);

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          BetterPlayerWidget(betterPlayerController: _betterPlayerController),
          // AspectRatio(
          //   aspectRatio: 16 / 9,
          //   child: Container(color: Colors.amber),
          // ),
          Flexible(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                // * List Episode Widget
                EpisodeSelection(episodeList: episodeList),
                const TitleAndInfo(),
                const NoteBox(),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: CommentsBox(filedata: comments))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _landscapeMode() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child:
          BetterPlayerWidget(betterPlayerController: _betterPlayerController),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: BlocBuilder<PlayerBloc, PlayerState>(builder: (context, state) {
        if (state is EpisodeDetailLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is EpisodeDetailLoaded) {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return _portaitMode(state.episodeDetail.comments!);
              } else {
                return _landscapeMode();
              }
            },
          );
        }
        return Container();
      })),
    );
  }

  @override
  void dispose() {
    disposePlayer();
    super.dispose();
  }
}
