import 'package:flutter/material.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      bottomOpacity: 0.0,
      elevation: 0.0,
      title: Text('Reservation', 
      style: TextStyle(fontSize: 16),),
      centerTitle: false,
      ),
    );
  }
}