import 'package:flutter/material.dart';

class ContainerBody extends StatelessWidget {
  const ContainerBody({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: ListView(
          children: children,
        ),
      ),
    );
  }
}
