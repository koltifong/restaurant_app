import "package:flutter/material.dart";

class HistoryScreen extends StatelessWidget {
  const HistoryScreen ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
      body: Center(
        child: Text('History'),
      ),
    );
  }
}