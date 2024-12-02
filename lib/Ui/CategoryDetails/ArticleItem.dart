import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/AppStyle/AppStyle.dart';
import 'package:news_app/Model/ArticleModel.dart';
import 'package:timeago/timeago.dart' as timeAgo;


class ArticleItem extends StatelessWidget {

  final ArticleModel articleModel;

  const ArticleItem({super.key,required this.articleModel});



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
               imageUrl: articleModel.image,
               height: 232.h,
               width:double.infinity ,
               fit: BoxFit.cover,
               placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
               errorWidget: (context, url, error) =>  Icon(
                 Icons.error,
                 color: Theme.of(context).colorScheme.primary,
                 size: 40.sp,),

            ),
        SizedBox(height: 10.h,),
        Text(articleModel.source),
        SizedBox(height: 5.h,),
        Text(articleModel.title,
          style:Theme.of(context).textTheme.titleMedium ,
        ),
        Align(
          alignment: Alignment.centerRight,
            child: Text(timeAgo.format(articleModel.date)
            )
        ),

      ],
    );
  }
}
