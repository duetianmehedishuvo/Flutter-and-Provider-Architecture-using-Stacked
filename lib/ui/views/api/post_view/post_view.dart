import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/views/api/post_view/post_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          appBar: AppBar(
            title: Text('Post View'),
          ),
          body:model.isBusy?
          Center(
            child: CircularProgressIndicator(),
          ) :ListView.builder(
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text('${model.data[index].title}'),
                  subtitle: Text('${model.data[index].body}'),
                ),
              );
            },
            itemCount: model.data.length,),
        ),
        viewModelBuilder: ()=>PostViewModel());
  }
}
