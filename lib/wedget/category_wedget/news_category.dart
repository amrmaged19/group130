import 'package:flutter/material.dart';

import '../../model/category.dart';
import '../../styles.dart';
class CategoryItems extends StatelessWidget {
 final Category x ;
  const CategoryItems({super.key, required this.x});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(x.image),
        radius: 60,
        child: Text(x.name, style: AppStyles.text30,),
      ),
    );
  }
}
