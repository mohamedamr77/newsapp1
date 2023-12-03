import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp2/widget/news_tile.dart';
import '../widget/categories_list_view.dart';
import '../widget/category_card.dart';
import '../widget/news_list_view.dart';
class homepage extends StatelessWidget {
  const homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",
              style: TextStyle(
                color:Colors.black,
              ),
            ),
            Text("Cloud",
              style: TextStyle(
                color:Color(0xffDFA533) ,
              ),
            ),

          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoriesListView()) ,
          SliverToBoxAdapter(child: SizedBox(height: 30),),
          NewsListView()
        ],
      ),
    );
  }
}

