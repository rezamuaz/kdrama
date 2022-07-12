import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/player_page/bloc/player_bloc.dart';
import 'package:kdrama/modules/player_page/repository/services/player_page_services.dart';
import 'package:kdrama/modules/player_page/repository/services/player_repository.dart';
import 'package:kdrama/modules/player_page/ui/player_layout.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RepositoryProvider(
          create: (context) => PlayerRepository(service: PlayerServices()),
          child: MultiBlocProvider(
            providers: [
              BlocProvider<PlayerBloc>(
                create: ((context) => PlayerBloc(
                      playerRepository: context.read<PlayerRepository>(),
                    )..add(
                        PlayerLoadEvent(),
                      )),
              )
            ],
            child: const PlayerLayout(),
          ),
        ),
      ),
    );
  }
}
