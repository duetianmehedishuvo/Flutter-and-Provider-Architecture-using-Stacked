import 'dart:convert';

import 'package:practice_shuvo/app/locator.dart';
import 'package:practice_shuvo/datamodels/post_data_model.dart';
import 'package:practice_shuvo/services/api.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as Http;

class PostViewModel extends FutureViewModel<List<PostDataModel>>{
  
//  final int userId;
//  PostViewModel(this.userId);

  final _api=locator<Api>();

  @override
  Future<List<PostDataModel>> futureToRun() =>_api.getPostsForUser(3);

}