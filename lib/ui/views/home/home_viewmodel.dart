import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  String _title='Mehedi Hasan Shuvo';
  String get title=>_title;

  int _count=0;
  int get count=>_count;

  void updateCount(){
    _count++;
    notifyListeners();
  }
}