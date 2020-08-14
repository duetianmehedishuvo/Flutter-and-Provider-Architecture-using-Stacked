import 'package:flutter/material.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:my_app/ui/views/StartupView_model.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          body: Center(
            child: Text('Startup View'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Text('Home Screen',style: TextStyle(
              color: Colors.white
            ),),
            onPressed: () => model.navigateToHome(),
          ),
        ),
        viewModelBuilder: ()=>StartupViewModel());
  }
}
