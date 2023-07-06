import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.history,
        ),
      ),
    );
  }
}
