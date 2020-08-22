import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:practice_shuvo/ui/views/partial_build_view/partial_build_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildViewModel>.nonReactive(
        builder: (context,model,child)=>Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _stringFrom(),
                SizedBox(height: 30,),
                _TitleAndValue(),
              ],
            ),
          ),
        ),
        viewModelBuilder: ()=>PartialBuildViewModel());
  }
}

class _stringFrom extends HookViewModelWidget<PartialBuildViewModel>{

  @override
  Widget buildViewModelWidget(BuildContext context, PartialBuildViewModel model) {
    var text=useTextEditingController();
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildViewModel>{
  @override
  Widget build(BuildContext context, PartialBuildViewModel model) {
    return Text(model.title??'',style: TextStyle(fontSize: 40),);
  }

}