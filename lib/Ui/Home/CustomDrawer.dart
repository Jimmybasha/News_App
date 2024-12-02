import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/AppStyle/AppColors.dart';
import 'package:news_app/AppStyle/AppStyle.dart';


typedef selectTab = void Function(TabEnum);

class CustomDrawer extends StatelessWidget {

  selectTab onPress;




  CustomDrawer({required this.onPress});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Container(
          alignment: Alignment.center,
          padding: REdgeInsets.only(
            top: 35,
            bottom: 37,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,

          ),
          child: Text(
            "News App!",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(height: 33.h,),
        InkWell(
          onTap: (){

            onPress(TabEnum.categoryTab);

          },
          child: Padding(
            padding:  REdgeInsets.only(left: 16),
            child: Row(
              children: [
                Icon(
                  Icons.list,
                  color: Colors.black,
                  size: 30.sp,
                ),
                SizedBox(width: 16.5.w,),
                Text("Categories",style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.black
                ),)
              ],
            ),
          ),
        ),
        SizedBox(height: 27.h,),
        InkWell(
          onTap: (){

            onPress(TabEnum.settingsTab);

          },
          child: Padding(
            padding:  REdgeInsets.only(left: 16),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 30.sp,
                ),
                SizedBox(width: 16.5.w,),
                Text("Settings",style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.black
                ),)
              ],
            ),
          ),
        )

      ],
    );
  }
}

enum TabEnum{

  categoryTab,
  settingsTab

}
