import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Ui/CategoryDetails/NewsListWidget.dart';

class CategoryDetailsWidget extends StatelessWidget {

final String categoryId;

const CategoryDetailsWidget({required this.categoryId});

static const List<String> sources = [
  "BBC","CBC","DMC","Sport","OSN","CN","Sport"
];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: sources.length,
      child: Padding(
        padding:  REdgeInsets.all(15.0),
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab ,
              labelColor: Colors.white,
              dividerHeight: 0,
              labelPadding: EdgeInsets.zero,
              indicator: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(25.r),

              ),
               tabs:sources.map((toElement)=>Tab(

                 child: Container(
                   margin: REdgeInsets.symmetric(horizontal: 10),
                     padding:   REdgeInsets.symmetric(
                         vertical: 10,
                         horizontal: 15
                     ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary
                      )
                    ),
                     child: Text(toElement
                     )
                 ),

               )
               ).toList()
            ),
            SizedBox(height: 29.h,),
            Expanded(
              child: TabBarView(
                  children: sources.map(
                      (toElement)=>NewsListWidget()
                  ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
