class Posts {
  late String thumbnail;
  late String category;

  Posts({required this.thumbnail, required this.category});

  factory Posts.fromMapData({required Map data}) {
    return Posts(thumbnail: data['thumbnail'], category: data['category']);
  }
}
