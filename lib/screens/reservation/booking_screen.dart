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
      body:  Container(
        alignment: Alignment.topRight,
        child: const SwitchExample(),
      )
    );
  }
}
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
       // Text above switch toggle 
       Text(
            AppLocalizations.of(context)!.switch_adopative,
            style: const TextStyle(fontSize: 16),
            ),
        Row(
        children: [
          // background color for switch toggle
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Colors.white),
            child: Row(
              children: [
                    Text(
                  AppLocalizations.of(context)!.enable_and_disable_switch,
                  style: const TextStyle(fontSize: 16),
                  ),
              //switch toggle both android and ios    
              Switch.adaptive(
                  value: light,
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    }
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      ],
    );
  }
}

