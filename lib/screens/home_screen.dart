import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:restaurant/classes/language.dart';
import 'package:restaurant/classes/language_constants.dart';
import 'package:restaurant/main.dart';

import 'package:restaurant/screens/Home_bottom.dart';
import 'package:restaurant/screens/history_screen.dart';
import 'package:restaurant/screens/notifications_screen.dart';
import 'package:restaurant/screens/booking_screen.dart';
import 'package:restaurant/screens/search_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// ignore: non_constant_identifier_names
  int _Index = 0;

  final screens = [
    const HomeBottom(),
    const OrderScreen(),
    const HistoryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _Index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(AppLocalizations.of(context)!.restaurant),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SearchScreen())),
              icon: const Icon(Icons.search)),
          DropdownButton<Language>(
            underline: const SizedBox(),
            icon: const Icon(
              Icons.language,
              color: Colors.white,
            ),
            onChanged: (Language? language) async {
              if (language != null) {
                Locale locale = await setLocale(language.languageCode);
                // ignore: use_build_context_synchronously
                MainApp.setLocale(context, locale);
              }
            },
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem<Language>(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[Text(e.flag), Text(e.name)],
                    ),
                  ),
                )
                .toList(),
          ),
          IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const NotificationScreen())),
              icon: const Icon(Icons.notifications)),
        ],
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: screens[_Index],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.brown,
              ),
              child: Text(
                AppLocalizations.of(context)!.welcome,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outlined,
                color: Colors.black,
              ),
              title: Text(
                AppLocalizations.of(context)!.account,
                style: const TextStyle(fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              title: Text(
                AppLocalizations.of(context)!.order,
                style: const TextStyle(fontSize: 14),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const ErrorScreen()),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.black),
              title: Text(
                AppLocalizations.of(context)!.history,
                style: const TextStyle(fontSize: 14),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.black),
              title: Text(
                AppLocalizations.of(context)!.about_us,
                style: const TextStyle(fontSize: 14),
              ),
              onTap: () {},
            ),
            const Spacer(),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const SignOutButton(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: const Icon(Icons.home),
              icon: const Icon(Icons.home_outlined),
              label: AppLocalizations.of(context)!.home),
          BottomNavigationBarItem(
              activeIcon: const Icon(Icons.shopping_cart),
              icon: const Icon(Icons.shopping_cart_outlined),
              label: AppLocalizations.of(context)!.order),
          BottomNavigationBarItem(
              activeIcon: const Icon(Icons.history),
              icon: const Icon(Icons.history_outlined),
              label: AppLocalizations.of(context)!.history),
        ],
        currentIndex: _Index,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
      ),
    );
  }
}
