// import 'dart:convert';
// import 'package:demoo/model.dart';
// import 'package:http/http.dart' as http;

// class PostService {
//   final String apiUrl;

//   PostService(this.apiUrl);

//   Future<List<PostsModel>> getPosts() async {
//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       final List<dynamic> jsonData = json.decode(response.body);
//       return jsonData.map((json) => PostsModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }
// }
