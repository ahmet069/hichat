// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const LoginView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignUpRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SignUpView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/LoginView',
          fullMatch: true,
        ),
        RouteConfig(
          LoginRouter.name,
          path: '/LoginView',
        ),
        RouteConfig(
          SignUpRouter.name,
          path: '/SignUpView',
        ),
      ];
}

/// generated route for
/// [LoginView]
class LoginRouter extends PageRouteInfo<void> {
  const LoginRouter()
      : super(
          LoginRouter.name,
          path: '/LoginView',
        );

  static const String name = 'LoginRouter';
}

/// generated route for
/// [SignUpView]
class SignUpRouter extends PageRouteInfo<void> {
  const SignUpRouter()
      : super(
          SignUpRouter.name,
          path: '/SignUpView',
        );

  static const String name = 'SignUpRouter';
}
