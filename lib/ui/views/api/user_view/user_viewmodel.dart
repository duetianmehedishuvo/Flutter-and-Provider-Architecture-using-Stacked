import 'dart:convert';

import 'package:practice_shuvo/app/locator.dart';
import 'package:practice_shuvo/datamodels/user_data_model.dart';
import 'package:practice_shuvo/services/api.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as Http;

class UserViewModel extends FutureViewModel<UserDataModel>{
  
  final int userId;
  UserViewModel(this.userId);

  @override
  void onError(error) {

  }

  @override
  Future<UserDataModel> futureToRun(){
    return locator<Api>().getUserProfile(userId);
  }
  
}