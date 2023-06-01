import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HallsScreen extends StatelessWidget {
  const HallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          AppLocalizations.of(context)!.lunch,
          style: const TextStyle(fontSize: 18),
        ),
        centerTitle: false,
      ),
    );
  }
}
