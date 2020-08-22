import 'package:flutter/material.dart';
import 'package:practice_shuvo/ui/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:practice_shuvo/ui/smart_widgets/single_increase_counter/single_increase_counter.dart';

class ReactiveExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            SingleIncreaseCounter(),
            SizedBox(width: 100,),
            DoubleIncreaseCounter(),
          ],
        ),
      ),
    );
  }
}
