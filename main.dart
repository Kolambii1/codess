// main.dart

import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image List'),
        ),
        body: ImageList(),
      ),
    );
  }
}

class ImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jsonData.length,
      itemBuilder: (context, index) {
        final item = jsonData[index];
        return ListTile(
          // title: Text(item['title']! ?? ''),
          subtitle: Text('ID: ${item['id']}'),
          //leading: Image.network(item['thumbnailUrl'] ?? ''),
        );
      },
    );
  }
}

// import 'package:demoo/service.dart';
// import 'package:flutter/material.dart';

// import 'model.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final postService = PostService('https://jsonplaceholder.typicode.com/posts');

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Posts'),
//         ),
//         body: FutureBuilder<List<PostsModel>>(
//           future: postService.getPosts(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               final posts = snapshot.data ?? [];

//               return ListView.builder(
//                 itemCount: posts.length,
//                 itemBuilder: (context, index) {
//                   final post = posts[index];
//                   return ListTile(
//                     title: Text(post.title ?? ''),
//                     // subtitle: Text(post.body ?? ''),
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
