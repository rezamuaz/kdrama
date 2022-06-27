import 'package:flutter/material.dart';

class Type extends StatelessWidget {
  const Type({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> hari = ['Senin', 'Selasa', 'Rabu'];
    return Flex(
      direction: Axis.horizontal,
      children: [
        ListView.builder(
          shrinkWrap: true,
          reverse: true,
          padding: EdgeInsets.zero,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: hari.length,
          itemBuilder: (BuildContext context, int index) => SizedBox(
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  backgroundColor: MaterialStateProperty.all(
                      Colors.blue.shade100.withOpacity(0.3))),
              onPressed: () {},
              child: const Text("test",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
            ),
          ),
        ),
      ],
    );
  }
}
