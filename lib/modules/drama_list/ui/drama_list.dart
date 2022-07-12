import 'package:flutter/material.dart';
import 'package:kdrama/modules/drama_list/ui/country_selected.dart';
import 'package:kdrama/modules/drama_list/ui/genre_selected.dart';
import 'package:kdrama/modules/drama_list/ui/original_network_selected.dart';
import 'package:kdrama/modules/drama_list/ui/rating_selected.dart';
import 'package:kdrama/modules/drama_list/ui/status_selected.dart';
import 'package:kdrama/modules/drama_list/ui/type_selected.dart';

class DramaList extends StatefulWidget {
  const DramaList({Key? key}) : super(key: key);

  @override
  State<DramaList> createState() => _DramaListState();
}

class _DramaListState extends State<DramaList> {
  String? typeValue;
  String? statusValue;

  void handleType(value) {
    setState(() {
      typeValue = value as String;
    });
  }

  void handleStatus(value) {
    setState(() {
      statusValue = value as String;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(statusValue.toString());
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
              child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //* Radio Button Type Drama
                      TypeSelected(
                        handleValue: handleType,
                        changeValue: typeValue,
                        label: 'Type',
                        defaultName: 'Semua',
                      ),
                      //* Selection Genre Drama
                      const CountrySelected(),
                      const GenreSelected(),
                      StatusSelected(
                          handleValue: handleStatus,
                          changeValue: statusValue,
                          label: "Status",
                          defaultName: "Semua"),
                      const RatingSelected(),
                      const OriginalNetworkSelected()
                    ],
                  ))),
        ),
      ),
    );
  }
}
