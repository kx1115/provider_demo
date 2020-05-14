import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/view/main_page.dart';
import 'model/theme_model.dart';
import 'view/splash_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context1) {
    return ChangeNotifierProvider<ThemeModel>(
      create: (_)=>new ThemeModel(),
      child: //这里必须用Builder,因为Provider.of<ThemeViewModel>(context,listen: true)要拿这里传入的context
        Builder(
          builder: (context)=>      
            MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme:  Provider.of<ThemeModel>(context,listen: true).themeData,//通过Provider.of取值
              routes: <String,WidgetBuilder>{
                "main/mainpage":(BuildContext context1)=>new MainPage(), //为什么这里可以拿到context1,provider就不行呢？？？因为该context中并没有Provider
              },
              home: SplashPage(),
            )
        ),
    );

  }
}
