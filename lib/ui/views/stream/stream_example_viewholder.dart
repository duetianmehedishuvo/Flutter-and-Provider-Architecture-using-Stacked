import 'package:stacked/stacked.dart';

class StreamExampleViewHolder extends StreamViewModel<int>{

  String get title=>'Shuvo $data';

  bool _otherSource=false;

  void swapSources(){
    _otherSource!=_otherSource;
    notifySourceChanged();
  }

  Stream<int> epochUpdateNumbers()async*{
    while(true){
      await Future.delayed(const Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
  Stream<int> epochFasterNumbers()async*{
    while(true){
      await Future.delayed(const Duration(milliseconds: 500));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }



  @override
  // TODO: implement stream
  Stream<int> get stream => _otherSource?epochUpdateNumbers():epochFasterNumbers();


}