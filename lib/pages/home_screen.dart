import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/provider/data_provider.dart';
import 'package:hidden_gem_vtuber_singing_relay_19th/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final opening = ref.watch(dataProvider).valueOrNull?.opening;
    final archives = ref.watch(dataProvider).valueOrNull?.archives ?? [];
    final videoIds = [
      if (opening != null) YoutubePlayerController.convertUrlToId(opening.url)!,
      ...archives.map((e) => YoutubePlayerController.convertUrlToId(e.url)!),
    ];

    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    final (fontSize, constraints) = switch (breakpoint.name) {
      MOBILE || TABLET => (20.0, BoxConstraints()),
      (_) => (24.0, BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.5)),
    };

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (videoIds.isNotEmpty)
              ConstrainedBox(
                constraints: constraints,
                child: CarouselSlider.builder(
                  itemCount: videoIds.length,
                  itemBuilder: (context, index, realIndex) {
                    final videoId = videoIds[index];
                    return GestureDetector(
                      onTap: () {
                        if (index == 0 && opening != null) {
                          OpeningPageRoute().push(context);
                          return;
                        }
                        WatchPageRoute(videoId: videoId).push(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              YoutubePlayerController.getThumbnail(
                                videoId: videoId,
                                quality: ThumbnailQuality.max,
                                webp: false,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                    viewportFraction: 1,
                  ),
                ),
              ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                '2025年4月20日開催、『歌うまV大発掘歌枠リレー vol.19』の配信アーカイブから歌唱曲のタイムラインに簡単に飛ぶことのできるファンアプリです！',
                style: TextStyle(fontSize: fontSize),
              ),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Divider(height: 1.0),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('課題曲', style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold)),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('1. 『私と言えばこれ!』という1曲', style: TextStyle(fontSize: fontSize)),
            ),
            Gap(4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('2. 共通課題曲: 舞台に立って / YOASOBI', style: TextStyle(fontSize: fontSize)),
            ),
            Gap(4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('3. 自分の枠の1つ前の方からのリクエスト曲', style: TextStyle(fontSize: fontSize)),
            ),
            Gap(4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('4. お好きな曲', style: TextStyle(fontSize: fontSize)),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Divider(height: 1.0),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                '※ 当アプリでは、YouTube API および YouTubeの公式埋め込みプレイヤーを使用してコンテンツを表示しております。掲載されている動画およびサムネイルの著作権は、各配信者様およびその所属先に帰属します。YouTube のガイドラインを遵守した形でご紹介しており、著作権を尊重することを大切にしています。',
              ),
            ),
            Gap(32),
          ],
        ),
      ),
    );
  }
}
