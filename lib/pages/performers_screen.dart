import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/gen/assets.gen.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/provider/data_provider.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/router.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/theme/models/app_theme_mode_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/link.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PerformersScreen extends HookConsumerWidget {
  const PerformersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final archives = ref.watch(dataProvider).valueOrNull?.archives.toList() ?? [];
    final themeMode = ref.watch(appThemeModeProvider);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 1.0),
          Expanded(
            child: ListView.separated(
              itemCount: archives.length,
              itemBuilder: (context, index) {
                final archive = archives[index];
                final videoId = YoutubePlayerController.convertUrlToId(archives[index].url)!;
                return InkWell(
                  onTap: () {
                    WatchPageRoute(videoId: videoId).push(context);
                  },
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Gap(8),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: SizedBox(
                                height: 100,
                                child: AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: Image.network(
                                    YoutubePlayerController.getThumbnail(
                                      videoId: videoId,
                                      quality: ThumbnailQuality.high,
                                      webp: false,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                archive.name ?? '',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Gap(2),
                              for (final song in archive.songs) ...[
                                Text(song.title, style: TextStyle(fontSize: 12)),
                                Gap(2),
                              ],
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 16,
                        bottom: 16,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (archive.youtube != null)
                              Link(
                                uri: Uri.parse(archive.youtube!),
                                target: LinkTarget.blank,
                                builder: (context, followLink) {
                                  return GestureDetector(
                                    onTap: followLink,
                                    child: Assets.images.youtubeSocialCircleRed.image(
                                      width: 24,
                                      height: 24,
                                    ),
                                  );
                                },
                              ),
                            if (archive.x != null) ...[
                              Gap(12),
                              Link(
                                uri: Uri.parse(archive.x!),
                                target: LinkTarget.blank,
                                builder: (context, followLink) {
                                  return GestureDetector(
                                    onTap: followLink,
                                    child: switch (themeMode) {
                                      ThemeMode.light => Assets.images.logoBlack.image(
                                        width: 20,
                                        height: 20,
                                      ),
                                      _ => Assets.images.logoWhite.image(width: 20, height: 20),
                                    },
                                  );
                                },
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(height: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
