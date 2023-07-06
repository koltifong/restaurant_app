import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:restaurant/screens/reservation/booking_screen.dart';

class FoodsScreen extends StatelessWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          AppLocalizations.of(context)!.breakfast,
          style: const TextStyle(fontSize: 18),
        ),
        centerTitle: false,
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: SingleChildScrollView(
       
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
 scrollDirection: Axis.horizontal,
              child: Row(
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
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 160,
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: 
                          Text(
                            '50%',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              ),
                          ),
                          ),
                           const Text(
                            'Offer for only today till when you order 6 packs of pizza',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.amber,
                              ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 125,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                child: Text(
                                'Order Now!',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 25,),
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
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 160,
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: 
                          Text(
                            '30%',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              ),
                          ),
                          ),
                           const Text(
                            'Offer for only today till when you order 3 packs of pizza',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.amber,
                              ),
                          ),
                      
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 125,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                child: Text(
                                'Order Now!',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ),

              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular Now',
                  style:  TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25,),
              SingleChildScrollView(
                
 scrollDirection: Axis.horizontal,
                child: Row(
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
                    child: Column(
                      children: [
                      Container(
                      height: 240,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ClipRRect(
                           borderRadius: const BorderRadius.only(
                            topLeft:  Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),// BorderRadius
                            child: Image.asset(
                              'assets/american_pancake.jpg',
                                // width: 110.0,
                                // height: 110.0,
                                fit: BoxFit.cover,
                            ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.only(left: 12),
                          child: const Column(
                            children: [
                            Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'American Pancake',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                              Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Most order recently',
                                style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ], 
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                child: Text(
                                'Learn more',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10 ,),
              GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReservationScreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                      Container(
                      height: 240,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ClipRRect(
                           borderRadius: const BorderRadius.only(
                            topLeft:  Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),// BorderRadius
                            child: Image.asset(
                              'assets/american_pancake.jpg',
                                // width: 110.0,
                                // height: 110.0,
                                fit: BoxFit.cover,
                            ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.only(left: 12),
                          child: const Column(
                            children: [
                            Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Egg',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                              Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Free white rice',
                                style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ], 
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                child: Text(
                                'Learn more',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        
                      ),
                    ),
                  ],
                ),
              ),
              
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
