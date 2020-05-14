import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: RaisedButton(
         child: Text("进入主页"),
         onPressed: (){
          Navigator.of(context).pushNamed("main/mainpage");
       })),
    );
  }
}