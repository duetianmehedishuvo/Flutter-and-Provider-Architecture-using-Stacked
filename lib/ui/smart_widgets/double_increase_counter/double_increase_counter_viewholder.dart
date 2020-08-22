import 'package:practice_shuvo/app/locator.dart';
import 'package:practice_shuvo/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterViewHolder extends ReactiveViewModel{
  final _counterService=locator<CounterService>();

  int get counter=>_counterService.counter;

  void doubleIncreaseCounter(){
    _counterService.doubleCounter();
    notifyListeners();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];

}