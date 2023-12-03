import 'package:flutter/material.dart';


import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories =  [
    CategoryModel(
      image: 'assets/images/business.png',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/images/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/images/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/images/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/images/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/images/sports.png',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/images/general.png',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        }, separatorBuilder: (BuildContext context, int index) =>SizedBox(width: 10,),),
    );
  }
}
