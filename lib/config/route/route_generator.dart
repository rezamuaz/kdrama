import 'package:flutter/material.dart';
import 'package:kdrama/config/route/route.dart';
import 'package:kdrama/modules/detail_page/detail_page.dart';
import 'package:kdrama/modules/drama_list/ui/drama_list.dart';
import 'package:kdrama/modules/favorite/ui/favorite_page.dart';
import 'package:kdrama/modules/home/home_page.dart';
import 'package:kdrama/modules/ongoing/ongoing.dart';
import 'package:kdrama/modules/player_page/ui/player_page.dart';

//* TODO: Generate Route
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    const String homeRoute = '/';
    const String dramalistRoute = '/dramalist';
    const String favorite = '/favorite';
    const String ongoing = '/ongoing';
    const String detail = '/detail';
    const String player = '/player';

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (context) => const HomePage());

      case dramalistRoute:
        return MaterialPageRoute(builder: ((context) => const DramaList()));

      case ongoing:
        return MaterialPageRoute(builder: ((context) => const Ongoing()));

      case favorite:
        return MaterialPageRoute(builder: ((context) => const FavoritePage()));

      case detail:
        return MaterialPageRoute(builder: ((context) => const DetailPage()));

      case player:
        return MaterialPageRoute(builder: ((context) => const PlayerPage()));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: const Text('ERROR'), centerTitle: true),
        body: const Center(
          child: Text('Page not Found'),
        ),
      );
    });
  }
}
