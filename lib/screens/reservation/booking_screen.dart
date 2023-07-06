import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          AppLocalizations.of(context)!.booking_halls,
          style: const TextStyle(fontSize: 18),
        ),
        centerTitle: false,
      ),
    );
  }
}
