import 'package:flutter/material.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/provider/data_provider.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

/// 歌枠サムネ一覧
class ThumbnailScreen extends HookConsumerWidget {
  const ThumbnailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final opening = ref.watch(dataProvider).valueOrNull?.opening;
    final archives = ref.watch(dataProvider).valueOrNull?.archives ?? [];
    final videoIds = [
      if (opening != null) YoutubePlayerController.convertUrlToId(opening.url)!,
      ...archives.map((e) => YoutubePlayerController.convertUrlToId(e.url)!),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400.0,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 16 / 9,
              ),
              delegate: SliverChildBuilderDelegate((_, int index) {
                final videoId = videoIds[index];
                return GestureDetector(
                  onTap: () {
                    if (index == 0 && opening != null) {
                      OpeningPageRoute().push(context);
                      return;
                    }
                    WatchPageRoute(videoId: videoId).push(context);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.0),
                    child: Image.network(
                      YoutubePlayerController.getThumbnail(
                        videoId: videoId,
                        quality: ThumbnailQuality.high,
                        webp: false,
                      ),
                      errorBuilder: (context, error, stackTrace) {
                        return ColoredBox(color: Colors.grey, child: Icon(Icons.error));
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }, childCount: videoIds.length),
            ),
          ),
        ],
      ),
    );
  }
}
