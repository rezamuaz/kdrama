import 'package:flutter/material.dart';

class Type extends StatelessWidget {
  const Type({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> hari = ['Senin', 'Selasa', 'Rabu'];
    return hari.isEmpty
        ? const SizedBox()
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: hari.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.purple.shade100.withOpacity(0.3))),
                      onPressed: () {},
                      child: Text(hari[index],
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
