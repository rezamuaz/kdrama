import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:kdrama/modules/drama_list/repository/model/drama_status_model.dart';

class StatusSelected extends StatelessWidget {
  final dynamic changeValue;
  final Function handleValue;
  final String label;
  final String defaultName;
  // * JSON options Type Drama
  final String statusDrama =
      '[{"id": "0", "value": "Semua"}, {"id": "1", "value": "Completed"}, {"id": "2", "value": "Ongoing"}, {"id": "3", "value": "Upcoming"}]';
  const StatusSelected(
      {Key? key,
      required this.handleValue,
      required this.changeValue,
      required this.label,
      required this.defaultName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // * List Model Status Drama
    late List<DramaStatusModel> statusList = [];
    final statusDramaJson = const JsonDecoder().convert(statusDrama);
    statusList = (statusDramaJson)
        .map<DramaStatusModel>((item) => DramaStatusModel.fromJson(item))
        .toList();
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        disabledHint: const Text("Status"),
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
        items: statusList
            .map((DramaStatusModel item) => DropdownMenuItem<String>(
                  value: item.id,
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
