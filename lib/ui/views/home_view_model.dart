import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  String _title='Shuvo';
  String get title=>_title;

  int _counter=0;
  int get counter=>_counter;

  void updatedata(){
    _counter++;
    notifyListeners();
  }
}