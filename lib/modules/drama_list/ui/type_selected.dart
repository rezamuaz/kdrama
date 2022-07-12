import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:kdrama/modules/drama_list/repository/model/drama_type_model.dart';

class TypeSelected extends StatelessWidget {
  final dynamic changeValue;
  final Function handleValue;
  final String label;
  final String defaultName;
  // * JSON options Type Drama
  final String typeDrama =
      '[{"id": 0, "value": "semua"}, {"id": 2, "value": "drama"}, {"id": 3, "value": "movie"}, {"id": 4, "value": "tv"}]';
  const TypeSelected(
      {Key? key,
      required this.handleValue,
      required this.changeValue,
      required this.label,
      required this.defaultName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // * List Model Type Drama
    late List<DramaTypeModel> typeList = [];
    final typeDramaJson = const JsonDecoder().convert(typeDrama);
    typeList = (typeDramaJson)
        .map<DramaTypeModel>((item) => DramaTypeModel.fromJson(item))
        .toList();
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        disabledHint: Text("select"),
        hint: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        items: typeList
            .map((DramaTypeModel item) => DropdownMenuItem<String>(
                  value: item.id.toString(),
                  child: Text(
                    item.value.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: changeValue,
        onChanged: (value) {
          handleValue(value);
        },
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
        ),
        iconSize: 14,
        iconEnabledColor: Colors.white,
        iconDisabledColor: Colors.grey,
        buttonHeight: 30,
        buttonWidth: 100,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.black26,
          ),
          color: Theme.of(context).colorScheme.primary,
        ),
        buttonElevation: 2,
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: 200,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Theme.of(context).colorScheme.primary,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(-20, 0),
      ),
    );
  }
}
