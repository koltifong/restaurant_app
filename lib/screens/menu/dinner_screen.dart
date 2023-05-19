import 'package:flutter/material.dart';

class HallsScreen extends StatelessWidget {
  const HallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
          'Dinner',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
      ),
    );
  }
}
