import 'package:flutter/material.dart';

import '../../model/category.dart';
import 'news_category.dart';
enum Category{general, sport, health, business}

class ViewCategory extends StatefulWidget {
  const ViewCategory({super.key});

  @override
  State<ViewCategory> createState() => _ViewCategoryState();
}

class _ViewCategoryState extends State<ViewCategory> {

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: news.length,
          itemBuilder: (context, index) {
        return CategoryItems(x : news[index],

        );
      }),
    );

  }
}
