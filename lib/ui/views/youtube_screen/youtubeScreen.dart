import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/views/youtube_screen/youtubeScreenViewModel.dart';
import 'package:stacked/stacked.dart';

class YoutubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<YoutubeScreenViewModel>.reactive(
        builder: (context,model,child)=>Scaffold(
          
        ),
        viewModelBuilder: ()=>YoutubeScreenViewModel());
  }
}
