import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:kdrama/modules/drama_list/repository/model/drama_original_network_model.dart';

class OriginalNetworkSelected extends StatefulWidget {
  const OriginalNetworkSelected({
    Key? key,
  }) : super(key: key);

  @override
  State<OriginalNetworkSelected> createState() =>
      _OriginalNetworkSelectedState();
}

class _OriginalNetworkSelectedState extends State<OriginalNetworkSelected> {
  // * JSON options Rating of Drama
  final String originalNetworkDrama =
      '[{ "id": "0", "value": "Semua" }, { "id": "1", "value": "Neflix" }, { "id": "2", "value": "SBS" }, { "id": "3", "value": "Iflix" }]';
  List<String?> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    // * List Model Type Drama
    late List<DramaOriginalNetworkModel> items = [];
    final originalNetworkDramaJson =
        const JsonDecoder().convert(originalNetworkDrama);
    items = (originalNetworkDramaJson)
        .map<DramaOriginalNetworkModel>(
            (item) => DramaOriginalNetworkModel.fromJson(item))
        .toList();
    print(selectedItems.toString());
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Rating',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: items.map((DramaOriginalNetworkModel item) {
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
                  "Rating",
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
