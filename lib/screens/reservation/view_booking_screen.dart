import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ViewBooking extends StatelessWidget {
  const ViewBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          AppLocalizations.of(context)!.view_booking,
          style: const TextStyle(fontSize: 18),
        ),
        centerTitle: false,
      ),
    );
  }
}
