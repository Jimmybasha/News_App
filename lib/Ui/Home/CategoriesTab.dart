import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Model/CategoryModel.dart';
import 'package:news_app/Ui/Home/CategoryItem.dart';

class CategoriesTab extends StatelessWidget {

  final Function(String) CategoryItemOnTap;
  const CategoriesTab({super.key,required this.CategoryItemOnTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(
        vertical: 36,
        horizontal: 37
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('''Pick your category 
of interest''',
          style: Theme.of(context).textTheme.titleMedium,

          ),
          SizedBox(height: 37.h,),
          Expanded(
            child: GridView.builder
              (gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1/1.2,
                crossAxisSpacing: 25.w,
                mainAxisSpacing: 20.h
            ),
                itemBuilder: (context, index) => CategoryItem(
                     onTap: CategoryItemOnTap ,
                    categoryModel: CategoryModel.categories[index],
                    index: index
                ),
                itemCount: CategoryModel.categories.length,
            ),
          ),

        ],

      ),
    );
  }
}
