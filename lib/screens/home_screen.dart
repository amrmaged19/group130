import 'package:aaa/model/category.dart';
import 'package:aaa/styles.dart';
import 'package:aaa/wedget/category_wedget/news_category.dart';
import 'package:aaa/wedget/category_wedget/view_category.dart';
import 'package:aaa/wedget/news_wedget/news_items.dart';
import 'package:aaa/wedget/news_wedget/news_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  appBar: AppBar(
    centerTitle: true,
    backgroundColor: Colors.teal,
    title: Text("News App", style: AppStyles.text30,),
  ),
      body:
      CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
           ViewCategory(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("General News", style: AppStyles.text30.copyWith(color: Colors.black),),
            ),

          ],
        )),NewsView()],
      ),
    );
  }
}
