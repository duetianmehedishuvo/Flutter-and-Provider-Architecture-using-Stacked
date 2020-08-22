import 'package:auto_route/auto_route_annotations.dart';
import 'package:practice_shuvo/ui/views/api/comment_view/comment_view.dart';
import 'package:practice_shuvo/ui/views/api/post_view/post_view.dart';
import 'package:practice_shuvo/ui/views/api/user_view/user_view.dart';
import 'package:practice_shuvo/ui/views/future/future_example_view.dart';
import 'package:practice_shuvo/ui/views/home/home_view.dart';
import 'package:practice_shuvo/ui/views/partial_build_view/partial_build_view.dart';
import 'package:practice_shuvo/ui/views/reactive_example_view/reactive_example_view.dart';
import 'package:practice_shuvo/ui/views/start_up/start_up_view.dart';
import 'package:practice_shuvo/ui/views/stream/stream_example.dart';
import 'package:practice_shuvo/ui/views/youtube_screen/youtubeScreen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomeView, initial: true,name: "homeview_model"),
    MaterialRoute(page: StartUpView, fullscreenDialog: true,name: 'start_up_view'),
    MaterialRoute(page: PartialBuildView, fullscreenDialog: true,name: 'partial_build_view'),
    MaterialRoute(page: ReactiveExampleView, fullscreenDialog: true,name: 'reactive_example_view'),
    MaterialRoute(page: FutureExampleView, fullscreenDialog: true,name: 'future_example_view'),
    MaterialRoute(page: StreamExampleView, fullscreenDialog: true,name: 'stream_example_view'),
    MaterialRoute(page: UserView, fullscreenDialog: true,name: 'user_view'),
    MaterialRoute(page: PostView, fullscreenDialog: true,name: 'post_view'),
    MaterialRoute(page: CommentView, fullscreenDialog: true,name: 'comment_view'),
    MaterialRoute(page: YoutubeScreen, fullscreenDialog: true,name: 'youtube_screen'),
  ],
)
class $Router{}