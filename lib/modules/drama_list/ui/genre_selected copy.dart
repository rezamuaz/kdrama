import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:kdrama/modules/drama_list/repository/model/drama_genre_model.dart';

class GenreSelected extends StatefulWidget {
  const GenreSelected({
    Key? key,
  }) : super(key: key);

  @override
  State<GenreSelected> createState() => _GenreSelectedState();
}

class _GenreSelectedState extends State<GenreSelected> {
  // * JSON options County of Drama
  final String genreDrama =
      '[ { "id": "0", "value": "Action" }, { "id": "1", "value": "Adventure" }, { "id": "2", "value": "Animals" }, { "id": "3", "value": "Bussiness" }, { "id": "4", "value": "Comedy" }, { "id": "5", "value": "Crime" }, { "id": "6", "value": "Detective" }, { "id": "7", "value": "Documentary" }, { "id": "8", "value": "Drama" }, { "id": "9", "value": "Family" }, { "id": "10", "value": "Fantasy" }, { "id": "11", "value": "Food" }, { "id": "12", "value": "Friendship" }, { "id": "13", "value": "Historical" }, { "id": "14", "value": "Horror" }, { "id": "15", "value": "Investigation" }, { "id": "16", "value": "Law" }, { "id": "17", "value": "Life" }, { "id": "18", "value": "Manga" }, { "id": "19", "value": "Martial Arts" }, { "id": "20", "value": "Mature" }, { "id": "21", "value": "Medical" }, { "id": "22", "value": "Melodrama" }, { "id": "23", "value": "Militery" }, { "id": "24", "value": "Music" }, { "id": "25", "value": "Mystery" }, { "id": "26", "value": "Political" }, { "id": "27", "value": "Psychological" }, { "id": "28", "value": "Romance" }, { "id": "29", "value": "School" }, { "id": "30", "value": "Sci-fi" }, { "id": "31", "value": "Sitcom" }, { "id": "32", "value": "Sports" }, { "id": "33", "value": "Supranatural" }, { "id": "34", "value": "Suspense" }, { "id": "35", "value": "Thriller" }, { "id": "36", "value": "Tokusatsu" }, { "id": "37", "value": "Tragedy" }, { "id": "38", "value": "Vampire" }, { "id": "39", "value": "War" }, { "id": "40", "value": "Western" }, { "id": "41", "value": "Wuxia" }, { "id": "42", "value": "Youth" }, { "id": "43", "value": "Zombile" } ]';
  List<String?> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    // * List Model Type Drama
    late List<DramaGenreModel> items = [];
    final genreDramaJson = const JsonDecoder().convert(genreDrama);
    items = (genreDramaJson)
        .map<DramaGenreModel>((item) => DramaGenreModel.fromJson(item))
        .toList();
    print(selectedItems.toString());
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Genre',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: items.map((DramaGenreModel item) {
          return DropdownMenuItem<String>(
            value: item.id,
            //disable default onTap to avoid closing menu when selecting an item
            enabled: false,
            child: StatefulBuilder(
              builder: (context, menuSetState) {
                final isSelected = selectedItems.contains(item.id);
                return InkWell(
                  onTap: () {
                    isSelected
                        ? selectedItems.remove(item.id)
                        : selectedItems.add(item.id);
                    //This rebuilds the StatefulWidget to update the button's text
                    setState(() {});
                    //This rebuilds the dropdownMenu Widget to update the check mark
                    menuSetState(() {});
                  },
                  child: Container(
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        isSelected
                            ? const Icon(Icons.check_box_outlined)
                            : const Icon(Icons.check_box_outline_blank),
                        const SizedBox(width: 16),
                        Text(
                          item.value.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }).toList(),
        //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
        value: selectedItems.isEmpty ? null : selectedItems.last,
        onChanged: (value) {},
        buttonHeight: 40,
        buttonWidth: 110,
        itemHeight: 40,
        dropdownWidth: MediaQuery.of(context).size.width,
        dropdownMaxHeight: MediaQuery.of(context).size.height * 0.6,
        itemPadding: EdgeInsets.zero,
        selectedItemBuilder: (context) {
          return items.map(
            (item) {
              return Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const Text(
                  "Genre",
                  style: TextStyle(
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              );
            },
          ).toList();
        },
      ),
    );
  }
}
