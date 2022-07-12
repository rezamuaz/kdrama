import 'package:flutter/material.dart';

class Ongoing extends StatelessWidget {
  const Ongoing({Key? key}) : super(key: key);

  final bool state = true;
  final double _iconSize = 15.0;

  @override
  Widget build(BuildContext context) {
    TabBar daysTab = TabBar(
        padding: const EdgeInsets.symmetric(vertical: 10),
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: Theme.of(context).colorScheme.primary,
        labelPadding: const EdgeInsets.symmetric(horizontal: 3),
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Theme.of(context).colorScheme.primary),
        isScrollable: true,
        tabs: [
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(
                                Icons.access_time,
                                size: _iconSize,
                              ),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text(
                        "Semua",
                      ),
                    ],
                  )),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(Icons.access_time, size: _iconSize),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text("Minggu"),
                    ],
                  )),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(Icons.access_time, size: _iconSize),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text("Senin"),
                    ],
                  )),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(Icons.access_time, size: _iconSize),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text("Selasa"),
                    ],
                  )),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(Icons.access_time, size: _iconSize),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text("Rabu"),
                    ],
                  )),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(Icons.access_time, size: _iconSize),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text("Kamis"),
                    ],
                  )),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(Icons.access_time, size: _iconSize),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text("Jumat"),
                    ],
                  )),
            ),
          ),
          Tab(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 1),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state
                          ? Row(children: [
                              Icon(Icons.access_time, size: _iconSize),
                              const SizedBox(width: 5)
                            ])
                          : const SizedBox(),
                      const Text("Sabtu"),
                    ],
                  )),
            ),
          ),
        ]);
    return DefaultTabController(
      length: 8,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Drama Ongoing'),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(daysTab.preferredSize.height),
              child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: daysTab)),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("Semua Drama"),
          ),
          Center(
            child: Text("Hari Minggu"),
          ),
          Center(
            child: Text("Hari Senin"),
          ),
          Center(
            child: Text("Hari Selasa"),
          ),
          Center(
            child: Text("Hari Rabu"),
          ),
          Center(
            child: Text("Hari Kamis"),
          ),
          Center(
            child: Text("Hari Jumat"),
          ),
          Center(
            child: Text("Hari Sabtu"),
          ),
        ]),
      ),
    );
  }
}
