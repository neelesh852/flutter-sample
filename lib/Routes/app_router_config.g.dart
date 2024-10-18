// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router_config.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $bottombarRoute,
      $onboardingRoute,
    ];

RouteBase get $bottombarRoute => GoRouteData.$route(
      path: '/bottomBar',
      factory: $BottombarRouteExtension._fromState,
    );

extension $BottombarRouteExtension on BottombarRoute {
  static BottombarRoute _fromState(GoRouterState state) =>
      const BottombarRoute();

  String get location => GoRouteData.$location(
        '/bottomBar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/',
      factory: $OnboardingRouteExtension._fromState,
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
