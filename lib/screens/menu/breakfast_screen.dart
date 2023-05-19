import 'package:flutter/material.dart';

class FoodsScreen extends StatelessWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
          'Breakfast',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
      ),
    );
  }
}
