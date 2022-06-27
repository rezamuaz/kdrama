import 'package:flutter/material.dart';
import 'package:kdrama/config/themes/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/detail_page/detail_page.dart';
import 'package:kdrama/modules/home/home_page.dart';
import 'package:kdrama/utils/global_observer.dart';

Future main() async {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: MyGlobalObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Drama',
        theme: CustomTheme.darkTheme,
        darkTheme: CustomTheme.darkTheme,
        home: DetailPage());
  }
}
