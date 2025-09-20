class Article{
  final String title;
  final String? description;
  final String? url;
  final String? urlToImage;

  Article({required this.title, this.description, this.url, this.urlToImage});
}
Article article = Article(title: "titlze", description: "description", url: "url", urlToImage: "urlToImage");