import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/home/bloc/episode_terbaru/episode_terbaru_bloc.dart';
import 'package:kdrama/modules/home/ui/list_widget/item_list.dart';

class EpisodeTerbaruList extends StatelessWidget {
  const EpisodeTerbaruList(
      {Key? key, required this.dataList, required this.title})
      : super(key: key);
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
              context.read<EpisodeTerbaruBloc>().add(EpisodeTerbaruLoadEvent());
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
        ItemList(imageList: dataList),
      ],
    );
  }
}
