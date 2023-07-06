// ignore_for_file: file_names

import "package:flutter/material.dart";
import 'package:restaurant/screens/menu/lunch_screen.dart';
import 'package:restaurant/screens/menu/breakfast_screen.dart';
import 'package:restaurant/screens/menu/dinner_screen.dart';
import 'package:restaurant/screens/reservation/booking_screen.dart';
import 'package:restaurant/screens/reservation/view_booking_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.5),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReservationScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      alignment: Alignment.topLeft,
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.booking_halls,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ViewBooking(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      alignment: Alignment.topLeft,
                      height: 125,
                      width: 185,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.view_booking,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppLocalizations.of(context)!.menu,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FoodsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        alignment: Alignment.center,
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.breakfast,
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Icon(
                              Icons.breakfast_dining_outlined,
                              size: 33,
                              color: Colors.brown,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BeveragesScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        alignment: Alignment.center,
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.lunch,
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Icon(
                              Icons.lunch_dining_outlined,
                              size: 33,
                              color: Colors.brown,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HallsScreen(),
                          ),
                        );
                      },
                      child: SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          alignment: Alignment.center,
                          height: 100,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.dinner,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Icon(
                                Icons.dinner_dining_outlined,
                                size: 33,
                                color: Colors.brown,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppLocalizations.of(context)!.location,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                height: 208,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    Image.asset('assets/maps.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
