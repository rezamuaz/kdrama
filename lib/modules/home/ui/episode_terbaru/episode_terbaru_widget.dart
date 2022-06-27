import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/home/bloc/episode_terbaru/episode_terbaru_bloc.dart';
import 'package:kdrama/modules/home/ui/episode_terbaru/episode_terbaru_list.dart';

class EpisodeTerbaruWidget extends StatelessWidget {
  const EpisodeTerbaruWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeTerbaruBloc, EpisodeTerbaruState>(
      builder: (context, state) {
        if (state is EpisodeTerbaruLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is EpisodeTerbaruLoaded) {
          return EpisodeTerbaruList(
              dataList: state.episodeTerbaru, title: 'Episode Terbaru');
        }
        return Container();
      },
    );
  }
}
