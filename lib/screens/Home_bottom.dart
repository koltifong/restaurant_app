import "package:flutter/material.dart";
import "package:restaurant/screens/reservation_screen.dart";

class HomeBottom extends StatelessWidget {
  const HomeBottom ({super.key});
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromRGBO(245, 245, 245, 0.5),
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                
                children: [
                  new GestureDetector(
                    onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReservationScreen(),),);},
                    child: Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.topLeft,
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
                      child: Column(
                        children: [
                          Text('Reservation'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Align(
                alignment: 
                Alignment.topLeft, 
               child: Text('Food'),),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                  alignment: Alignment.centerLeft,
                   child: new GestureDetector(
                    onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReservationScreen(),),);},
                    child: Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.topLeft,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
                      child: Column(
                        children: [
                          Text('Khmer'),
                        ],
                      ),
                    ),
                  ),
                  ),
                   Container(
                  alignment: Alignment.centerLeft,
                   child: new GestureDetector(
                    onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReservationScreen(),),);},
                    child: Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.topLeft,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white, 
                    // image: DecorationImage(
                    // image: NetworkImage(
                    //   'https://i.pinimg.com/originals/a3/99/24/a39924a3fcb7266ff7360af8a6ba2e98.jpg'),
                    //   fit: BoxFit.contain,),
                    ),
                      child: Column(
                        children: [
                          Text('Hall'),
                        ],
                      ),
                    ),
                  ),
                  ),
                   Container(
                  alignment: Alignment.centerLeft,
                   child: new GestureDetector(
                    onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReservationScreen(),),);},
                    child: Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.topLeft,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
                      child: Column(
                        children: [
                          Text('Drink'),
                        ],
                      ),
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
    );
  }
}