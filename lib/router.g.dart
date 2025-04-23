// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$shellRouteData];

RouteBase get $shellRouteData => StatefulShellRouteData.$route(
  factory: $ShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/',

          factory: $HomePageRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/opening',

          factory: $OpeningPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/performers',

          factory: $PerformersPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/thumbnails',

          factory: $ThumbnailPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/watch',

          factory: $WatchPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/credit',

          factory: $CreditPageRouteExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $ShellRouteDataExtension on ShellRouteData {
  static ShellRouteData _fromState(GoRouterState state) =>
      const ShellRouteData();
}

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OpeningPageRouteExtension on OpeningPageRoute {
  static OpeningPageRoute _fromState(GoRouterState state) =>
      const OpeningPageRoute();

  String get location => GoRouteData.$location('/opening');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PerformersPageRouteExtension on PerformersPageRoute {
  static PerformersPageRoute _fromState(GoRouterState state) =>
      const PerformersPageRoute();

  String get location => GoRouteData.$location('/performers');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThumbnailPageRouteExtension on ThumbnailPageRoute {
  static ThumbnailPageRoute _fromState(GoRouterState state) =>
      const ThumbnailPageRoute();

  String get location => GoRouteData.$location('/thumbnails');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WatchPageRouteExtension on WatchPageRoute {
  static WatchPageRoute _fromState(GoRouterState state) =>
      WatchPageRoute(videoId: state.uri.queryParameters['video-id']!);

  String get location =>
      GoRouteData.$location('/watch', queryParams: {'video-id': videoId});

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CreditPageRouteExtension on CreditPageRoute {
  static CreditPageRoute _fromState(GoRouterState state) =>
      const CreditPageRoute();

  String get location => GoRouteData.$location('/credit');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
