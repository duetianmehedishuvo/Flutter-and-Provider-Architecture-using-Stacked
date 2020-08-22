import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/views/api/user_view/user_viewmodel.dart';
import 'package:stacked/stacked.dart';

class UserView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          body:model.hasError?
          CircularProgressIndicator()
              :model.isBusy?
          Center(child: CircularProgressIndicator()):
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Name: ${model.data.name}\n'
                    'Id: ${model.data.id}\n'
                    'UserName: ${model.data.username}\n'
                    'Email: ${model.data.email}')
              ],
            ),
          ),
        ),
        viewModelBuilder: ()=>UserViewModel(1));
  }
}
