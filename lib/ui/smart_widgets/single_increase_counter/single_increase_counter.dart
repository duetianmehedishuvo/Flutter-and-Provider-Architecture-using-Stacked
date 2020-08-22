import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/smart_widgets/single_increase_counter/single_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
        builder: (context,model,child)=>GestureDetector(
          onTap: model.updateCounter,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text('Tab to increment the counter',textAlign: TextAlign.center,),
                Text(model.counter.toString()),
              ],
            ),
          ),
        ),
        viewModelBuilder: ()=>SingleIncreaseCounterViewModel());
  }
}
