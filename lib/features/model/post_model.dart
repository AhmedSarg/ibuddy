class Post {
  final String publisher;
  final String time;
  final String data;
  final int saves;
  final bool saved;
  final String media;
  final String mediaType;

  Post({
    required this.publisher,
    required this.time,
    required this.data,
    required this.saves,
    required this.saved,
    required this.media,
    required this.mediaType,
  });

  factory Post.fromJson(Map jsonData) {
    return Post(
      publisher: jsonData["publisher"],
      time: jsonData["time"],
      data: jsonData["data"],
      saves: jsonData["saves"],
      saved: jsonData["saved"],
      media: jsonData["media"],
      mediaType: jsonData["mediaType"],
    );
  }
}
