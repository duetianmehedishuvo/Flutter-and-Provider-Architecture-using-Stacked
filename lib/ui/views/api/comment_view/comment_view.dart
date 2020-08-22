import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/views/api/comment_view/comment_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CommentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommentViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          appBar: AppBar(
            title: Text('Comment Section'),
          ),
          body: model.isBusy?Center(
            child: CircularProgressIndicator(),
          ):ListView.builder(
              itemCount: model.data.length,
              itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text('${model.data[index].name}'),
                    subtitle: Text('${model.data[index].body}'),
                  ),
                );
              }),
        ),
        viewModelBuilder: ()=>CommentViewModel(3));
  }
}
