// Async await and futures

void main() async {
  // Futures --> like promises in JavaScript (result of async task that takes some times to complete)
  // can have uncompleted or completed state

  // then() fires when complete
  // fetchPost().then((p) {
  //   print(p.title);
  //   print(p.userId);
  // });

  // async await
  final post = await fetchPost(); // wait until finish
  print(post.title);
  print(post.userId);
}

// after 3 seconds, this future will be uncompleted and then completed
// specify a future and then some time will return a Post object
Future<Post> fetchPost() {
  // Simulates the delay on a network request
  const delay = Duration(seconds: 3);

  // settimeout in javascript
  return Future.delayed(delay, () {
    return Post('my post', 123);
  });
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
