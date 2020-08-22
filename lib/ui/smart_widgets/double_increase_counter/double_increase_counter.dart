import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/smart_widgets/double_increase_counter/double_increase_counter_viewholder.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewHolder>.reactive(
        builder: (context,model,child)=>GestureDetector(
          onTap: model.doubleIncreaseCounter,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Tab to double the Counter',textAlign: TextAlign.center,),
                Text(model.counter.toString())
              ],
            ),
          ),
        ),
        viewModelBuilder: ()=>DoubleIncreaseCounterViewHolder());
  }
}
