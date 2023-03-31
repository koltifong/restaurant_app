import 'package:flutter/material.dart';

import 'package:restaurant/screens/Home_bottom.dart';
import 'package:restaurant/screens/history_screen.dart';
import 'package:restaurant/screens/notifications_screen.dart';
import 'package:restaurant/screens/order_screen.dart';
import 'package:restaurant/screens/search_screen.dart';

class Home extends StatefulWidget {
  const Home ({super.key});
  
  @override
  _HomeState createState () => _HomeState();
}

class _HomeState extends State<Home> {
int _Index = 0;

final screens = [
    HomeBottom(),
    OrderScreen(),
    HistoryScreen(),
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
        title: Text('Restaurant'),
        centerTitle: true,
        actions: [
          IconButton(
          onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const SearchScreen())),
          icon: const Icon(Icons.search)),
          IconButton(
          onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const NotificationScreen())),
          icon: const Icon(Icons.notifications)),
        ],
      ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
      body: screens [_Index],
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.brown,
            ),
            child: 
            Text('Restaurant'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined,color: Colors.black,),
            title: const Text('Account',
            style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.history,color: Colors.black),
            title: const Text('History',
            style: TextStyle(fontSize: 14),
            ),
            onTap: () {
            //   Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const MyAccount()),
            // );
            },
          ),
          Spacer(),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.black),
            title: const Text('Settings',
            style: TextStyle(fontSize: 14),
            ),
            onTap: () {
            //   Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const MyAccount()),
            // );
            },
          ),
        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home'
        ),
         BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopping_cart),
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Order'
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.history),
            icon: Icon(Icons.history_outlined),
            label: 'History'
        ),
      ],
        currentIndex: _Index,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
      ),
    );
  }
}