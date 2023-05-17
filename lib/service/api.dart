import 'dart:convert';

import 'package:http/http.dart';

class Api {
  var http;

  Future<List<Album>> fetchAlbums() async {
    // Make the API call.
    Response response = await http.get('https://api.example.com/albums');

    // Check the response status code.
    if (response.statusCode != 200) {
      throw Exception('Failed to fetch albums');
    }

    // Parse the response.
    List<Album> albums = jsonDecode(response.body)['data'] as List<Album>;

    // Return the albums.
    return albums;
  }
}

class Album {
  late String title;
}
