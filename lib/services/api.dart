import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as Http;
import 'package:practice_shuvo/datamodels/comment_data_model.dart';
import 'package:practice_shuvo/datamodels/post_data_model.dart';
import 'package:practice_shuvo/datamodels/user_data_model.dart';

@lazySingleton
class Api{
  static const endpoint='https://jsonplaceholder.typicode.com';

  var client=new Http.Client();

  Future<UserDataModel> getUserProfile(int userId) async {
    try{
      var response = await client.get('$endpoint/users/$userId',headers: {
        'X-Custom-Header':'My Value'
      });

      if(response.statusCode==444){
        return null;
      }

      if(response.statusCode==404){
        return null;
      }

      if(response.statusCode==420){
        return null;
      }

      return UserDataModel.fromJson(json.decode(response.body));
    }catch(error){
      throw error;
    }

  }

  Future<List<PostDataModel>> getPostsForUser(int userId) async {
    var posts = List<PostDataModel>();
    var response = await client.get('$endpoint/posts?userId=$userId');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var post in parsed) {
      posts.add(PostDataModel.fromJson(post));
    }
    return posts;
  }

  Future<List<CommentDataModel>> getCommentsForPost(int postId) async {
    var comments = List<CommentDataModel>();
    var response = await client.get('$endpoint/comments?postId=$postId');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var comment in parsed) {
      comments.add(CommentDataModel.fromJson(comment));
    }
    return comments;
  }

}