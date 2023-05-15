import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import 'package:restaurant/screens/Home_bottom.dart';
import 'package:restaurant/screens/history_screen.dart';
import 'package:restaurant/screens/notifications_screen.dart';
import 'package:restaurant/screens/order_screen.dart';
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
        title: const Text('Restaurant Reservation'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SearchScreen())),
              icon: const Icon(Icons.search)),
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Text(
                'Welcome',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 14),
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
              title: const Text(
                'Order',
                style: TextStyle(fontSize: 14),
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
              title: const Text(
                'History',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.black),
              title: const Text(
                'About us',
                style: TextStyle(fontSize: 14),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Order'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.history),
              icon: Icon(Icons.history_outlined),
              label: 'History'),
        ],
        currentIndex: _Index,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
      ),
    );
  }
}
