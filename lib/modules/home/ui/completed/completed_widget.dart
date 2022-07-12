import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/home/bloc/completed/completed_bloc.dart';
import 'package:kdrama/modules/home/ui/completed/completed_list.dart';

class CompletedWidget extends StatelessWidget {
  const CompletedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompletedBloc, CompletedState>(
      builder: (context, state) {
        if (state is CompletedLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CompletedLoaded) {
          return CompletedList(dataList: state.completed, title: 'Tamat');
        }
        return Container();
      },
    );
  }
}
