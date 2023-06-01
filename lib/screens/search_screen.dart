import "package:flutter/material.dart";
import "package:restaurant/screens/home_screen.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
                hintText: AppLocalizations.of(context)!.search,
                border: InputBorder.none),
          ),
        ),
      )),
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: Center(
        child: Text(AppLocalizations.of(context)!.search),
      ),
    );
  }
}
