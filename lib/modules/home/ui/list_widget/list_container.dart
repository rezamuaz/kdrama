import 'package:flutter/material.dart';
import 'package:kdrama/modules/home/ui/list_widget/item_list.dart';

class ListContainer extends StatelessWidget {
  const ListContainer(
      {Key? key,
      required this.dataList,
      required this.title,
      required this.updateData})
      : super(key: key);
  final List<dynamic> dataList;
  final String title;
  final dynamic updateData;

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
            onPressed: () {},
            icon: const Icon(Icons.replay),
          ),
          const SizedBox(height: 10),
          const Spacer(flex: 1),
          TextButton(
            style: TextButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                textStyle: const TextStyle(
                  fontSize: 15,
                )),
            onPressed: () async {
              updateData;
            },
            child: const Text('Lihat Semua'),
          ),
        ]),
        ItemList(imageList: dataList),
      ],
    );
  }
}
