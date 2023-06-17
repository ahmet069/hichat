import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../presentation/view/login_view.dart';
import '../../presentation/view/sign_up_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      page: LoginView,
      path: '/LoginView',
      name: 'LoginRouter',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: SignUpView,
      path: '/SignUpView',
      name: 'SignUpRouter',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
