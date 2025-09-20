import 'package:flutter/material.dart';

import '../../model/article.dart';
import '../../network/api_service.dart';
import 'news_items.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  ApiService apiService = ApiService();
  List<Article>? x ;

  @override
  Widget build(BuildContext context) {
    return x==null?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())): SliverList.builder(

        itemCount: x!.length,itemBuilder: (context, index) {
      return NewsItems(article: x![index],);
    })
    ;
  }
  @override
  void initState() {
    getArticles();
    // TODO: implement initState
    super.initState();
  }
  getArticles()async{
    x = await apiService.getNews();
    setState(() {

    });
  }
}
