import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kdrama/config/route/route_generator.dart';
import 'package:kdrama/config/themes/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/detail_page/detail_page.dart';
import 'package:kdrama/modules/drama_list/ui/drama_list.dart';
import 'package:kdrama/modules/favorite/ui/favorite_page.dart';
import 'package:kdrama/modules/home/home_page.dart';
import 'package:kdrama/modules/ongoing/ongoing.dart';
import 'package:kdrama/utils/global_observer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kdrama/utils/helpers/date_time_extension.dart';

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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('id', ''), // Spanish, no country code
      ],
      home: const MainPage(),
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class KeepAlivePage extends StatefulWidget {
  const KeepAlivePage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<KeepAlivePage> createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    /// Dont't forget this
    super.build(context);

    return widget.child;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.99);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: PageView(
        physics: CustomPageViewScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        children: const [
          KeepAlivePage(child: HomePage()),
          DramaList(),
          Ongoing(),
          FavoritePage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            color: Theme.of(context).colorScheme.surface,
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Theme.of(context).colorScheme.primary,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              tabBackgroundColor: Colors.grey[100]!,
              color: Theme.of(context).colorScheme.onSurface,
              backgroundColor: Theme.of(context).colorScheme.surface,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.theaters_outlined,
                  text: 'Drama',
                ),
                GButton(
                  icon: Icons.calendar_month_outlined,
                  text: 'Ongoing',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linearToEaseOut);
              },
            ),
          ),
        ),
      ),
    );
  }
}
