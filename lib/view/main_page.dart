import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/test_model.dart';
import 'package:provider_demo/model/theme_model.dart';
import 'package:provider_demo/widget/commond_bar.dart';
import 'package:provider_demo/widget/provider_widget.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: CommondBar("provider demo", [
        InkWell(
          onTap: (){
            Provider.of<ThemeModel>(context,listen:false).changeTheme();
          },
          child: Icon(Icons.cake),
        )
      ]).build(context),
      body: ProviderWidget<TestModel>(
        model:TestModel(), 
        onReady:(model){
          model.toString();
        }, 
        builder:(context, model, child){
          return Column(
            children: <Widget>[
              Text("${model.clickNum}"),
              RaisedButton(child:Text("add"),onPressed: (){
                  model.add();
              })
            ],
          );
        },
      )
    );
  }
}