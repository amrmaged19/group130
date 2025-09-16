import 'package:flutter/material.dart';

import '../../model/category.dart';
import 'news_category.dart';
class ViewCategory extends StatelessWidget {
  const ViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: news.length,itemBuilder: (context, index) {
        return CategoryItems(x : news[index]);
      }),
    );
  }
}
