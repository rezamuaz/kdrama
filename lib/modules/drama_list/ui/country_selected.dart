import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:kdrama/modules/drama_list/repository/model/drama_country_model.dart';

class CountrySelected extends StatefulWidget {
  const CountrySelected({
    Key? key,
  }) : super(key: key);

  @override
  State<CountrySelected> createState() => _CountrySelectedState();
}

class _CountrySelectedState extends State<CountrySelected> {
  // * JSON options County of Drama
  final String countryDrama =
      '[{"country": "korea selatan", "value": "1"}, {"country": "jepang", "value": "2"}, {"country": "china", "value": "3"}]';
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    // * List Model Type Drama
    late List<DramaCountryModel> items = [];
    final countryDramaJson = const JsonDecoder().convert(countryDrama);
    items = (countryDramaJson)
        .map<DramaCountryModel>((item) => DramaCountryModel.fromJson(item))
        .toList();
    print(selectedItems.toString());
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Country',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: items.map((DramaCountryModel item) {
          return DropdownMenuItem<String>(
            value: item.value,
            //disable default onTap to avoid closing menu when selecting an item
            enabled: false,
            child: StatefulBuilder(
              builder: (context, menuSetState) {
                final isSelected = selectedItems.contains(item.value);
                return InkWell(
                  onTap: () {
                    isSelected
                        ? selectedItems.remove(item.value)
                        : selectedItems.add(item.value.toString());
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
                          item.country.toString(),
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
        dropdownWidth: 160,
        itemPadding: EdgeInsets.zero,
        selectedItemBuilder: (context) {
          return items.map(
            (item) {
              return Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const Text(
                  "Country",
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
