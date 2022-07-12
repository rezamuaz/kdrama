import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/home/bloc/completed/completed_bloc.dart';
import 'package:kdrama/modules/home/ui/completed/completed_item.dart';

class CompletedList extends StatelessWidget {
  const CompletedList({
    Key? key,
    required this.dataList,
    required this.title,
  }) : super(key: key);
  final List<dynamic> dataList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          IconButton(
            onPressed: () {
              context.read<CompletedBloc>().add(CompletedLoadEvent());
            },
            icon: const Icon(
              Icons.refresh,
              size: 25,
            ),
          ),
          const SizedBox(height: 10),
          const Spacer(flex: 1),
          TextButton(
            style: TextButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                textStyle: const TextStyle(
                  fontSize: 15,
                )),
            onPressed: () async {},
            child: const Text('Lihat Semua'),
          ),
        ]),
        CompletedItem(imageList: dataList),
      ],
    );
  }
}
