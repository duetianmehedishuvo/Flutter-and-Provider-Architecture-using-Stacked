// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/api/comment_view/comment_view.dart';
import '../ui/views/api/post_view/post_view.dart';
import '../ui/views/api/user_view/user_view.dart';
import '../ui/views/future/future_example_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/partial_build_view/partial_build_view.dart';
import '../ui/views/reactive_example_view/reactive_example_view.dart';
import '../ui/views/start_up/start_up_view.dart';
import '../ui/views/stream/stream_example.dart';
import '../ui/views/youtube_screen/youtubeScreen.dart';

class Routes {
  static const String homeview_model = '/';
  static const String start_up_view = '/start-up-view';
  static const String partial_build_view = '/partial-build-view';
  static const String reactive_example_view = '/reactive-example-view';
  static const String future_example_view = '/future-example-view';
  static const String stream_example_view = '/stream-example-view';
  static const String user_view = '/user-view';
  static const String post_view = '/post-view';
  static const String comment_view = '/comment-view';
  static const String youtube_screen = '/youtube-screen';
  static const all = <String>{
    homeview_model,
    start_up_view,
    partial_build_view,
    reactive_example_view,
    future_example_view,
    stream_example_view,
    user_view,
    post_view,
    comment_view,
    youtube_screen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeview_model, page: HomeView),
    RouteDef(Routes.start_up_view, page: StartUpView),
    RouteDef(Routes.partial_build_view, page: PartialBuildView),
    RouteDef(Routes.reactive_example_view, page: ReactiveExampleView),
    RouteDef(Routes.future_example_view, page: FutureExampleView),
    RouteDef(Routes.stream_example_view, page: StreamExampleView),
    RouteDef(Routes.user_view, page: UserView),
    RouteDef(Routes.post_view, page: PostView),
    RouteDef(Routes.comment_view, page: CommentView),
    RouteDef(Routes.youtube_screen, page: YoutubeScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartUpView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    PartialBuildView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PartialBuildView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    ReactiveExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReactiveExampleView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    FutureExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FutureExampleView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    StreamExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StreamExampleView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    UserView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    PostView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    CommentView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CommentView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    YoutubeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => YoutubeScreen(),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}
