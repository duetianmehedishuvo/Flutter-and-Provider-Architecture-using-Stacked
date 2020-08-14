import 'package:flutter/material.dart';
import 'package:my_app/ui/views/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          body: Center(
            child: Text('${model.title} ${model.counter}'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add,color: Colors.white,),
            onPressed:model.updatedata,
          ),
        ),
        viewModelBuilder: ()=>HomeViewModel());
  }
}
