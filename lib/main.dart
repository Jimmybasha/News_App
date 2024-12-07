import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/AppStyle/AppStyle.dart';
import 'package:news_app/SplashScreen/SplashScreen.dart';
import 'package:news_app/Ui/Home/HomeScreen.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(412, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: AppStyle.lightTheme,
          routes: {
            HomeScreen.routeName:(_)=> HomeScreen(),
            SplashScreen.routeName:(_)=>SplashScreen()

          },
          initialRoute: SplashScreen.routeName,
        );
      });


  }
}

