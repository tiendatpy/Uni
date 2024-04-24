// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:http/http.dart' as http;

// {
//   "albumId": 1,
//   "id": 1,
//   "title": "accusamus beatae ad facilis cum similique qui sunt",
//   "url": "https://via.placeholder.com/600/92c952",
//   "thumbnailUrl": "https://via.placeholder.com/150/92c952"
// },

class Photo {
  int albumId, id;
  String title, url, thumbnailUrl;
  Photo(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl,
    };
  }
}

Future<List<Photo>> getHTTP_content() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var response = await http.get(uri);
  if (response.statusCode == 200) {
    // print(response.body);
    List<dynamic> list = jsonDecode(response.body) as List;
    // print(list[0]);
    return list.map((photojson) => Photo.fromJson(photojson)).toList();
  }
  return [];
}
