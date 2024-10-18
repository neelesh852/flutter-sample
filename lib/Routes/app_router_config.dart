import 'package:firstpoc/Constants/app_shared_pref_key.dart';
import 'package:firstpoc/Screens/onboarding/onboarding_page.dart';
import 'package:firstpoc/Utils/app_shared_pref.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../di/injector.dart';
import 'app_router_constants.dart';
part 'app_router_config.g.dart';

class AppRouter {
  GoRouter router = GoRouter(
      initialLocation: '/',
      routes: $appRoutes,
      redirect: (BuildContext context, GoRouterState state) {
        var app = AppInjector.getIt<SharedPref>();
        if (state.fullPath == '/') {
          var isLogin = app.getBool(key: AppSharedPrefKey.loginStatus);
         /* if (isLogin) {
            return const BottombarRoute().location;
          }*/
        }
        return null;
      }
  );
}
@TypedGoRoute<BottombarRoute>(
  path: '/${AppRouteName.bottomBar}',
)
class BottombarRoute extends GoRouteData {
  const BottombarRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
       Container();
}
/*@TypedGoRoute<LoginRoute>(
  path: '/${AppRouteName.login}',
)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      Login();
}*/

@TypedGoRoute<OnboardingRoute>(
  path: '/',
)
class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardingPage();
}
/*
@TypedGoRoute<HomeRoute>(
  path: '/${AppRouteName.home}',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider(
          create: ( context)=> HomeCubit(repository: HomeRepository()),
          child:  HomePage());
}



@TypedGoRoute<AccountRoute>(
  path: '/${AppRouteName.account}',
)
class AccountRoute extends GoRouteData {
  const AccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider(
        create: ( context)=> AccountCubit(),
        child: const AccountPage()
      );
}

@TypedGoRoute<FavouritesRoute>(
  path: '/${AppRouteName.favourites}',
)
class FavouritesRoute extends GoRouteData {
  const FavouritesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      BlocProvider(
          create: (context)=> FavouriteCubit(),
          child: FavouritesPage());
}

@TypedGoRoute<SignupRoute>(
  path: '/${AppRouteName.signup}',
)
class SignupRoute extends GoRouteData {
  const SignupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      SignupPage();
}

@TypedGoRoute<DetailRoute>(
  path: '/${AppRouteName.detail}',
)
class DetailRoute extends GoRouteData {
  DetailRoute(this.$extra);
  final MovieData $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      DetailPage($extra);
}

@TypedGoRoute<EditAccountRoute>(
  path: '/${AppRouteName.editAccount}',
)
class EditAccountRoute extends GoRouteData {
  const EditAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      EditAccount();
}

@TypedGoRoute<ChangePasswordRoute>(
  path: '/${AppRouteName.changePassword}',
)
class ChangePasswordRoute extends GoRouteData {
  const ChangePasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ChangePassword();
}*/
