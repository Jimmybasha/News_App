import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/AppStyle/AppStyle.dart';
import 'package:news_app/Model/ArticleModel.dart';
import 'package:news_app/Ui/CategoryDetails/ArticleItem.dart';


class NewsListWidget extends StatelessWidget {

  const NewsListWidget({super.key});
  static  List<ArticleModel> articles = [



    ArticleModel(
      title:"I AM AATROX , I AM THE WORLD ENDER",
      image: "https://images8.alphacoders.com/131/1316477.jpeg",
      date: DateTime.now(),
      source: "Ascended",
    ),
    ArticleModel(
      title:"I AM AATROX , I AM THE WORLD ENDER",
      image: "https://images8.alphacoders.com/131/1316477.jpeg",
      date: DateTime.now(),
      source: "Ascended",
    ),
    ArticleModel(
      title:"I AM AATROX , I AM THE WORLD ENDER",
      image: "https://images8.alphacoders.com/131/1316477.jpeg",
      date: DateTime.now().subtract(Duration(days: 2)),
      source: "Ascended",
    ),
    ArticleModel(
      title:"I AM AATROX , I AM THE WORLD ENDER",
      image: "https://images8.alphacoders.com/131/1316477.jpeg",
      date: DateTime.now(),
      source: "Ascended",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>ArticleItem(articleModel: articles[index]),
        separatorBuilder: (context, index) => SizedBox(height: 20.h,),
        itemCount: articles.length
    );
  }
}
