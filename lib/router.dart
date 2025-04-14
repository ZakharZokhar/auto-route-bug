import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/main.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    // AutoRoute(
    //   path: '/',
    //   page: AppWrapperRoute.page,
    //   initial: true,
    //   children: [
    AutoRoute(path: '/first', page: FirstRoute.page, initial: true),
    AutoRoute(path: '/second', page: SecondRoute.page),
    // AutoRoute(path: 'register', page: RegisterRoute.page),
    // AutoRoute(path: 'google-auth', page: GoogleAuthRoute.page),
    // // AutoRoute(path: 'videos', page: VideoListRoute.page),
    // AutoRoute(path: 'video', page: VideoRoute.page),
    // AutoRoute(path: 'record', page: AudioRecorderRoute.page),
    //   ],
    // ),
    // AutoRoute(path: '/videos', page: VideoListRoute.page),
  ];
}
