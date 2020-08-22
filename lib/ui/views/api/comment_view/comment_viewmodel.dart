import 'dart:convert';

import 'package:practice_shuvo/datamodels/comment_data_model.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as Http;

class CommentViewModel extends FutureViewModel<List<CommentDataModel>>{
  
  final int postId;
  CommentViewModel(this.postId);

  @override
  Future<List<CommentDataModel>> futureToRun() async{
    await Future.delayed(Duration(seconds: 2));
    var comments=List<CommentDataModel>();
    var response=await Http.get('https://jsonplaceholder.typicode.com/comments?postId=$postId');
    var parshed=json.decode(response.body) as List<dynamic>;
    for(var comment in parshed){
      comments.add(CommentDataModel.fromJson(comment));
    }
    return comments;
  }
  
}