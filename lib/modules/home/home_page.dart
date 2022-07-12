import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/config/route/route.dart';
import 'package:kdrama/modules/home/bloc/Recommended/recommendation_bloc.dart';
import 'package:kdrama/modules/home/bloc/completed/completed_bloc.dart';
import 'package:kdrama/modules/home/bloc/episode_terbaru/episode_terbaru_bloc.dart';
import 'package:kdrama/modules/home/home_layout.dart';
import 'package:kdrama/modules/home/repositories/home_respository.dart';
import 'package:kdrama/modules/home/repositories/services/home_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
          create: (context) => HomeRepository(service: HomeServices()),
          child: MultiBlocProvider(providers: [
            BlocProvider<RecommendationBloc>(
              create: (context) => RecommendationBloc(
                homeRepository: context.read<HomeRepository>(),
              )..add(
                  RecommendationLoadEvent(),
                ),
            ),
            BlocProvider<EpisodeTerbaruBloc>(
              create: (context) => EpisodeTerbaruBloc(
                homeRepository: context.read<HomeRepository>(),
              )..add(
                  EpisodeTerbaruLoadEvent(),
                ),
            ),
            BlocProvider<CompletedBloc>(
              create: (context) => CompletedBloc(
                homeRepository: context.read<HomeRepository>(),
              )..add(
                  CompletedLoadEvent(),
                ),
            )
          ], child: const HomeLayout())),
    );
  }
}
