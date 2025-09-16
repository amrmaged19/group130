import 'package:flutter/material.dart';

import 'news_items.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList.builder(

        itemCount: 5,itemBuilder: (context, index) {
      return NewsItems();
    })
    ;
  }
}
