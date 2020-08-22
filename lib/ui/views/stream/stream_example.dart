import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/views/stream/stream_example_viewholder.dart';
import 'package:stacked/stacked.dart';

class StreamExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewHolder>.reactive(
        builder: (context,model,child)=>Scaffold(
          body: Center(
            child: Text(model.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.swapSources,
            child: Icon(Icons.swap_horizontal_circle),
          ),
        ),
        viewModelBuilder: ()=>StreamExampleViewHolder());
  }
}
