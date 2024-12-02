import 'package:flutter/material.dart';
import 'package:news_app/Ui/CategoryDetails/CategoryDetailsWidget.dart';
import 'package:news_app/Ui/Home/CategoriesTab.dart';
import 'package:news_app/Ui/Home/CustomDrawer.dart';
import 'package:news_app/Ui/Home/SettingsTab.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget selectedWidget;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedWidget  = CategoriesTab(CategoryItemOnTap: selectCategory);
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        drawer: Drawer(

          child: CustomDrawer(
              onPress: selectedTab,

          )

        ),
        appBar: AppBar(
          title: const Text("News App"),
        ),
        body: selectedWidget,


      ),
    );
  }

  selectedTab(TabEnum tab){

    switch(tab){
      case TabEnum.categoryTab:{
        selectedWidget=CategoriesTab(
          CategoryItemOnTap: (String) {
            selectCategory(String);
          },
        );
      }
      case TabEnum.settingsTab:{
        selectedWidget=SettingsTab();
      }

    }

    setState(() {

    });
    Navigator.pop(context);



  }
  selectCategory(String Id){

    selectedWidget=CategoryDetailsWidget(categoryId: Id );

    setState(() {

    });

  }
}
