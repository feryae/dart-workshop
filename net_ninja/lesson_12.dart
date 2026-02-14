// HTTP Request
// Get packages from pub.dev -> package manager
// dart pub add http
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  final post = await fetchPost();

  print(post.title);
  print(post.userId);
}

Future<Post> fetchPost() async {
  var uri = Uri.https('jsonplaceholder.typicode.com', '/posts/2');

  final response = await http.get(
    uri,
    // Cloudflare blocked the request. so we need headers
    headers: {
      "User-Agent":
          "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36",
      "Accept": "application/json",
      "Accept-Language": "en-US,en;q=0.9",
      "Connection": "keep-alive",
    },
  );

  Map<String, dynamic> data = convert.jsonDecode(response.body);

  return Post(data["title"], data["userId"]);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
