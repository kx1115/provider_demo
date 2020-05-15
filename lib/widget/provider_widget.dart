
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProviderWidget<T extends ChangeNotifier> extends StatefulWidget{
  final T model;
  final Widget Function(BuildContext context, T value, Widget child) builder;
  final Function(T) onReady;

  ProviderWidget({this.model,this.onReady,this.builder});

  @override
  _ProviderWidgetState<T> createState() => _ProviderWidgetState<T>();
    
}
    
class _ProviderWidgetState<T extends ChangeNotifier> extends State<ProviderWidget<T>> {
  @override
  void initState() {
    super.initState();
    if(widget.onReady!=null){
      widget.onReady(widget.model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (_) => widget.model,
      child:       
      Consumer<T>(//通过Consumer可以取到context
        builder: widget.builder,
      ),

      //下面的也可以实现
      // Builder(builder: (context){
      //   T m=Provider.of<T>(context);
      //   context.read
      //   return widget.builder(context,m,null);
      // })
    );
  }

}