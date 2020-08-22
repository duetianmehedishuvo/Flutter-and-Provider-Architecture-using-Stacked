import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/views/start_up/start_up_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Start Up View'),
                RaisedButton(
                  onPressed: model.navigateToHome,
                  child: Text('Home Screen'),
                ),
                RaisedButton(
                  onPressed: model.navigateToReactiveExample,
                  child: Text('Reactive Example'),
                ),
                RaisedButton(
                  onPressed: model.navigateToFutureExample,
                  child: Text('Future Example'),
                ),
                RaisedButton(
                  onPressed: model.navigateToStreamExample,
                  child: Text('Stream Example'),
                ),
                RaisedButton(
                  onPressed: model.navigateToUser,
                  child: Text('User View'),
                ),
                RaisedButton(
                  onPressed: model.navigateToPost,
                  child: Text('Post View'),
                ),
                RaisedButton(
                  onPressed: model.navigateToComments,
                  child: Text('Comment View'),
                ),
              ],
            )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.navigateToPartial,
          ),
        ),
        viewModelBuilder: ()=>StartUpViewModel());
  }
}
