import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          body: Center(
            child: Text('${model.title} ${model.count}'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCount,
            child: Icon(Icons.add,color: Colors.white,),
          ),
        ),
        viewModelBuilder: ()=>HomeViewModel());
  }
}
