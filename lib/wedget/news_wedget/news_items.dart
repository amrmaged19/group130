import 'package:flutter/material.dart';

import '../../model/article.dart';
import '../../styles.dart';

class NewsItems extends StatelessWidget {
  const NewsItems({super.key, required this.article});
 final Article article;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)),
              child: Image.network(
                  fit: BoxFit.fill,
                  article.urlToImage ??"https://images.pexels.com/photos/3970329/pexels-photo-3970329.jpeg", width: double.infinity,height: 200 ),
            ),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              article.title, style: AppStyles.text30.copyWith(color: Colors.black),),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            article.description??"no description", style: AppStyles.text30.copyWith(color: Colors.grey,fontSize:15 ),)
          ]
      ),
    );
    ;
  }
}
