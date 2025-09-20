import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/article.dart';
import '../wedget/category_wedget/view_category.dart';

class ApiService {
  Dio dio = Dio();
  Future<List<Article>> getNews()async{
    int x = 0;
  Response response =await  dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=0b9efff9c4ab4cbe9a86d10a7796bc62#");
  Map<String, dynamic> json = response.data;
  List<Article> articles = [];
  for (var item in json["articles"]) {
    articles.add(
        Article(title: item["title"], description: item["description"], url: item["url"], urlToImage: item["urlToImage"]));

  }
  return articles;
}
}
main()async{
  ApiService apiService = ApiService();
  List<Article> x = await apiService.getNews();;
  print(x);
}