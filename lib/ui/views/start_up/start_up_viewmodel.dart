import 'package:practice_shuvo/app/locator.dart';
import 'package:practice_shuvo/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome()async{
    await _navigationService.navigateTo(Routes.homeview_model);
  }
  Future navigateToPartial()async{
    await _navigationService.navigateTo(Routes.partial_build_view);
  }
  Future navigateToReactiveExample()async{
    await _navigationService.navigateTo(Routes.reactive_example_view);
  }
  Future navigateToFutureExample()async{
    await _navigationService.navigateTo(Routes.future_example_view);
  }
  Future navigateToStreamExample()async{
    await _navigationService.navigateTo(Routes.stream_example_view);
  }
  Future navigateToUser()async{
    await _navigationService.navigateTo(Routes.user_view);
  }
  Future navigateToPost()async{
    await _navigationService.navigateTo(Routes.post_view);
  }
  Future navigateToComments()async{
    await _navigationService.navigateTo(Routes.comment_view);
  }
  Future navigateToYoutubeScreen()async{
    await _navigationService.navigateTo(Routes.youtube_screen);
  }
}