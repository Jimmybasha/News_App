import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/AppStyle/AppStyle.dart';
import 'package:news_app/Model/CategoryModel.dart';

class CategoryItem extends StatelessWidget {

  final CategoryModel categoryModel;
  final int index;
  final Function(String) onTap;

  CategoryItem({super.key,required this.onTap,required this.categoryModel,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          onTap(categoryModel.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: categoryModel.color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
            bottomRight: Radius.circular(index.isEven?0:25.r),
            bottomLeft: Radius.circular(index.isOdd?0:25.r),

          )

        ),
        child: Column(
          children: [
              Image.asset(
                  "assets/images/${categoryModel.imagePath}",
                height: 116.h,
                width: 132.w,
              ),
            SizedBox(height: 8.h,),
            Text(categoryModel.title,
            style: Theme.of(context).appBarTheme.titleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
