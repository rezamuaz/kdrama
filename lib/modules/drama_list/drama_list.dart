import 'package:flutter/material.dart';
import 'package:kdrama/modules/drama_list/multi_select.dart';
import 'package:kdrama/modules/drama_list/single_select.dart';

class DramaList extends StatefulWidget {
  const DramaList({Key? key}) : super(key: key);

  @override
  State<DramaList> createState() => _DramaListState();
}

class _DramaListState extends State<DramaList> {
  final List<String> typeList = [
    'Semua',
    'Drama',
    'Movie',
    'TV Show',
  ];

  final List<String> multiItem = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  List<String> selectedMultiItem = [];

  String typeValue = 'Semua';

  void handleValue(value) {
    setState(() {
      typeValue = value as String;
    });
  }

  void handleMulti() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            width: double.infinity,
            height: 40,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    border: InputBorder.none,
                    hintText: 'Cari Drama...'),
              ),
            ),
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SingleSelect(
                        handleValue: handleValue,
                        changeValue: typeValue,
                        typeList: typeList,
                        label: 'Type :',
                        defaultName: 'Semua',
                      ),
                      MultiSelect(
                          handleMulti: handleMulti,
                          selectedItems: selectedMultiItem,
                          multiList: multiItem),
                      const SizedBox(
                        child: Text('Test'),
                      ),
                      const SizedBox(
                        child: Text('Test'),
                      )
                    ],
                  ))),
        ),
      ),
    );
  }
}
