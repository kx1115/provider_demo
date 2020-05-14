
import 'package:flutter/material.dart';

class CommondBar{
  final String title;
  final List<Widget> actions;

  CommondBar(this.title,this.actions);

   
  AppBar build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: Text(title),
        leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () { Navigator.of(context).pop();},
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        actions: actions,        
    );
  }
}