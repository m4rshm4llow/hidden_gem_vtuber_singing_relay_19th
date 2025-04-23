import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/credit_screen.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/home_screen.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/main_scaffold.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/opening_screen.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/performers_screen.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/thumbnail_screen.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/watch_screen.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  routes: $appRoutes,
  debugLogDiagnostics: kDebugMode,
  navigatorKey: _rootNavigatorKey,
  errorBuilder: (context, state) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('404 Not Found', style: Theme.of(context).textTheme.headlineSmall),
            Gap(8),
            Text('ご指定のページが見つかりません。', style: Theme.of(context).textTheme.bodyLarge),
            Gap(64),
            TextButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('ホームに戻る'),
            ),
          ],
        ),
      ),
    );
  },
);

@TypedStatefulShellRoute<ShellRouteData>(
  branches: [
    TypedStatefulShellBranch(routes: [TypedGoRoute<HomePageRoute>(path: '/')]),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<OpeningPageRoute>(path: '/opening'),
        TypedGoRoute<PerformersPageRoute>(path: '/performers'),
        TypedGoRoute<ThumbnailPageRoute>(path: '/thumbnails'),
        TypedGoRoute<WatchPageRoute>(path: '/watch'),
        TypedGoRoute<CreditPageRoute>(path: '/credit'),
      ],
    ),
  ],
)
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return SelectionArea(child: MainScaffold(navigationShell: navigationShell));
  }
}

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class OpeningPageRoute extends GoRouteData {
  const OpeningPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OpeningScreen();
  }
}

class PerformersPageRoute extends GoRouteData {
  const PerformersPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PerformersScreen();
  }
}

class ThumbnailPageRoute extends GoRouteData {
  const ThumbnailPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ThumbnailScreen();
  }
}

class WatchPageRoute extends GoRouteData {
  const WatchPageRoute({required this.videoId});

  final String videoId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WatchScreen(videoId: videoId);
  }
}

class CreditPageRoute extends GoRouteData {
  const CreditPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CreditScreen();
  }
}
