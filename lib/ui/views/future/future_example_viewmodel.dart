import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel{

  Future<String> getDataFromServer()async{
    await Future.delayed(Duration(seconds: 3));
    return 'This is fetched from everywhere';
  }

  @override
  void onError(error) {
    // TODO: implement onError
    super.onError(error);
  }

  @override
  Future futureToRun() =>getDataFromServer();

}