import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text('Notifications'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.playlist_add_check)),
        ],
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  children: [
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            size: 33,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5.0, left: 5.0),
                      child: Column(
                        children: const [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Order',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                    text: '\nDetails below notifications',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )),
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
