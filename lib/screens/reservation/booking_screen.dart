import 'package:flutter/material.dart';
import 'package:restaurant/service/api.dart';

// class ReservationScreen extends StatelessWidget {
//   const ReservationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         bottomOpacity: 0.0,
//         elevation: 0.0,
//         title: const Text(
//           'Booking',
//           style: TextStyle(fontSize: 18),
//         ),
//         centerTitle: true,
//       ),
//     );
//   }
// }

class ReservationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create an instance of the API class.
    Api api = Api();

    // Fetch the albums.
    Future<List<Album>> albums = api.fetchAlbums();

    // Use the albums in the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text('Albums'),
      ),
      body: FutureBuilder<List<Album>>(
        future: albums,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // The albums have been fetched.
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].title),
                );
              },
            );
          } else if (snapshot.hasError) {
            // An error occurred while fetching the albums.
            return Text(snapshot.error.toString());
          } else {
            // The albums are still being fetched.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
