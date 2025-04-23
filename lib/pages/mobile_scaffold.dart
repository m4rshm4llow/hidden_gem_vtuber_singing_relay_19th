import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/pages/main_scaffold.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/router.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/theme/widgets/theme_mode_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

/// モバイル用のホーム画面
class MobileScaffold extends StatelessWidget {
  const MobileScaffold(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const NavigationTitle(),
        centerTitle: false,
        elevation: 4,
        actions: [ThemeModeButton(), const Gap(8)],
      ),
      body: navigationShell,
      drawer: _Drawer(navigationShell: navigationShell),
    );
  }
}

class _Drawer extends HookConsumerWidget {
  const _Drawer({required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('2025.4.20'),
                  const Gap(4),
                  const Text('歌うまV大発掘歌枠リレーvol.19'),
                  const Gap(4),
                  const Text('配信アーカイブ'),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('ホーム'),
            onTap: () {
              Navigator.of(context).pop();
              HomePageRoute().go(context);
            },
          ),
          ListTile(
            title: Text('開会式'),
            onTap: () {
              Navigator.of(context).pop();
              OpeningPageRoute().go(context);
            },
          ),
          ListTile(
            title: Text('出演者一覧'),
            onTap: () {
              Navigator.of(context).pop();
              PerformersPageRoute().go(context);
            },
          ),
          ListTile(
            title: Text('サムネイルギャラリー'),
            onTap: () {
              Navigator.of(context).pop();
              ThumbnailPageRoute().go(context);
            },
          ),
          Divider(height: 1.0),
          ListTile(
            title: Text('クレジット'),
            onTap: () {
              Navigator.of(context).pop();
              CreditPageRoute().go(context);
            },
          ),
          ListTile(
            title: Text('ライセンス'),
            onTap: () {
              showLicensePage(context: context);
            },
          ),
        ],
      ),
    );
  }
}

extension StringX on String {
  String formatDate() {
    final date = DateTime.parse(this);
    final formatter = DateFormat('yyyy年MM月dd日');
    return formatter.format(date);
  }
}
